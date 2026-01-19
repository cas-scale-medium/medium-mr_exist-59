resource "aws_lambda_function" "analysis_lambda" {
  filename      = "resources/lambda_function_payload.zip"
  function_name = "${local.resource_prefix.value}-analysis"
  role          = "${aws_iam_role.iam_for_lambda.arn}"

  source_code_hash = "${filebase64sha256("resources/lambda_function_payload.zip")}"

  environment {
    variables = {
      access_key = "AKIAUEVERSZE2TC2BZHB"
      secret_key = "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"
    }
  }
}
