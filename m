Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DB23194D2
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 22:03:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 83EA8875B6;
	Thu, 11 Feb 2021 21:03:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NB5t5-rfBRhb; Thu, 11 Feb 2021 21:03:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D4408874CD;
	Thu, 11 Feb 2021 21:02:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 492411BF41A
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 21:02:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 45B3D874CD
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 21:02:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iI1wryRSOGCf for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 21:02:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from pv50p00im-ztdg10012101.me.com (pv50p00im-ztdg10012101.me.com
 [17.58.6.49])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B710687359
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 21:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1613077376;
 bh=9HqWGB0ly1bUOWj9XC8LrkDsOhqjDPdoBk/DvaHPl6E=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type;
 b=WWqKF6rGNJGABU7iEs4aAPQb6dt01uTv2FU4yYbtKHn56ywXCg/2P3LuFoBBAN3Az
 G/D/fD67OjwJzPqlkOg6RhqI6KR7CVJCV5ByawlqHzMF+UVq6IQo+WjIrnKoN5+R9G
 XwGn9CbDt10mGZyITZkRQYkm7VG8yD5ID9rw50OkCBbqcmd8lkkaJQMYxCfuqOAPdo
 Hruip9tMVWcKDceu1gsFgnCSgfwqdROfNmgI1SXJR0lJio945rESOsSU2RQuS0I5DI
 rf76e6R26FdZBGLTJjHwHH5doYnsaDq4rvFx7wSbLQ9Rc5yannrtk1Kb0M2JaQEzO7
 6k8ohDK98bOrg==
Received: from [192.168.31.114] (unknown [45.250.50.68])
 by pv50p00im-ztdg10012101.me.com (Postfix) with ESMTPSA id 3D4FB84021E;
 Thu, 11 Feb 2021 21:02:53 +0000 (UTC)
Subject: Re: [PATCH] staging: vt6656: Fixed issue with alignment in rf.c
To: Greg KH <gregkh@linuxfoundation.org>
References: <20210211152426.10008-1-pritthijit.nath@icloud.com>
 <YCWTlWj4KHT6Okq/@kroah.com>
 <141aa6fe-972c-a9a2-f321-65a98ebccc41@icloud.com>
 <YCWXH1MZy0cbDB3G@kroah.com>
From: Pritthijit Nath <pritthijit.nath@icloud.com>
Message-ID: <a94be58e-b503-1fcf-7c5c-158ce7e2d188@icloud.com>
Date: Fri, 12 Feb 2021 02:32:51 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <YCWXH1MZy0cbDB3G@kroah.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.737
 definitions=2021-02-11_07:2021-02-11,
 2021-02-11 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2102110166
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: tvboxspy@gmail.com, devel@driverdev.osuosl.org, oscar.carter@gmx.com,
 forest@alittletooquiet.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 12/02/21 2:14 am, Greg KH wrote:
> On Fri, Feb 12, 2021 at 02:07:50AM +0530, Pritthijit Nath wrote:
>> On 12/02/21 1:59 am, Greg KH wrote:
>>> On Thu, Feb 11, 2021 at 08:54:26PM +0530, Pritthijit Nath wrote:
>>>> This change fixes a checkpatch CHECK style issue for "Alignment should match open parenthesis".
>>>>
>>>> Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
>>>> ---
>>>>  drivers/staging/vt6656/rf.c | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
>>>> index 5b8da06e3916..bcd4d467e03a 100644
>>>> --- a/drivers/staging/vt6656/rf.c
>>>> +++ b/drivers/staging/vt6656/rf.c
>>>> @@ -687,7 +687,7 @@ static int vnt_rf_set_txpower(struct vnt_private *priv, u8 power,
>>>>  
>>>>  			if (hw_value < ARRAY_SIZE(vt3226d0_lo_current_table)) {
>>>>  				ret = vnt_rf_write_embedded(priv,
>>>> -					vt3226d0_lo_current_table[hw_value]);
>>>> +							    vt3226d0_lo_current_table[hw_value]);
>>>>  				if (ret)
>>>>  					return ret;
>>>>  			}
>>>> -- 
>>>> 2.25.1
>>>
>>> Please run this change, with the changelog above, through
>>> checkpatch.pl, fix that, and resend.
>>>
>>> thanks,
>>>
>>> greg k-h
>>>
>>
>> This change fixes a checkpatch CHECK style issue for "Alignment should 
>> match open parenthesis".
>>
>> Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
>> ---
>>  drivers/staging/vt6656/rf.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
>> index 5b8da06e3916..bcd4d467e03a 100644
>> --- a/drivers/staging/vt6656/rf.c
>> +++ b/drivers/staging/vt6656/rf.c
>> @@ -687,7 +687,7 @@ static int vnt_rf_set_txpower(struct vnt_private *priv, u8 power,
>>  
>>  			if (hw_value < ARRAY_SIZE(vt3226d0_lo_current_table)) {
>>  				ret = vnt_rf_write_embedded(priv,
>> -					vt3226d0_lo_current_table[hw_value]);
>> +							    vt3226d0_lo_current_table[hw_value]);
>>  				if (ret)
>>  					return ret;
>>  			}
> 
> I can't take this type of submission, do you see other patches submitted
> this way on the mailing list?
Actually I am having a hard time since this one's my first. I would really appreciate if you could be a little clear. Should I resend the entire patch as a new thread?

> 
> Also, you have a trailing space in your changelog text :(

Thanks for pointing out. Yes, I have fixed the trailing space.

> 
> thanks,
> 
> greg k-h
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
