
import os
from dotenv import load_dotenv
from aliyunsdkcore.client import AcsClient
from aliyunsdkcore.acs_exception.exceptions import ClientException
from aliyunsdkcore.acs_exception.exceptions import ServerException
from aliyunsdkrds.request.v20140815.DescribeSQLLogRecordsRequest import DescribeSQLLogRecordsRequest
from aliyunsdkcore.request import CommonRequest


load_dotenv()
AccessKey_ID = os.getenv("AccessKey_ID")
AccessKey_Secret = os.getenv("AccessKey_Secret")
region_id = "us-west-1"
Client = AcsClient(
ak=AccessKey_ID,
secret=AccessKey_Secret,
region_id=region_id
	)

request = CommonRequest()
request.set_domain('ecs.aliyuncs.com')
request.set_version('2014-05-26')
request.set_action_name('DescribeInstances')

response = client.do_action_with_exception(request)

print(response)

