Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D213A33EA0F
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 07:49:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC53843200;
	Wed, 17 Mar 2021 06:49:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bWdiIPtpTrF1; Wed, 17 Mar 2021 06:49:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 306B9431EA;
	Wed, 17 Mar 2021 06:49:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D1AC61BF403
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 06:48:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C056A83F28
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 06:48:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aIj16iBm6c-6 for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 06:48:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E53083F1F
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 06:48:54 +0000 (UTC)
IronPort-SDR: FwGHPD9JoAFSRircSQrM0SEyQgswai0lII70Vv73FFQcPKTj/hocMmYTO3kp1szsrcwf+NgGWb
 pWIWLb8RLjIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="274450810"
X-IronPort-AV: E=Sophos;i="5.81,255,1610438400"; d="scan'208";a="274450810"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 23:48:54 -0700
IronPort-SDR: KtHZ0CBfu/OEZrtON+eomD08mGiNPEdAGUo5sDxYKkSs3qz5Arle95r5+9m1c24soD3GQnYXVb
 Br/Y6cLu8OOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,255,1610438400"; d="scan'208";a="411352429"
Received: from ipu5-build.bj.intel.com (HELO [10.238.232.196])
 ([10.238.232.196])
 by orsmga007.jf.intel.com with ESMTP; 16 Mar 2021 23:48:51 -0700
Subject: Re: [PATCH v2 1/2] media: staging/intel-ipu3: Fix memory leak in
 imu_fmt
To: Ricardo Ribalda <ribalda@chromium.org>
References: <20210315123406.1523607-1-ribalda@chromium.org>
 <34c90095-bcbf-5530-786a-e709cc493fa9@linux.intel.com>
 <CANiDSCvMvYVN0+zN3du2pJfGLPJ_f7Ees2YrfybJgUDmBjq2jQ@mail.gmail.com>
From: Bingbu Cao <bingbu.cao@linux.intel.com>
Message-ID: <db0bac15-01a1-5cc0-f72d-135ce5f9b788@linux.intel.com>
Date: Wed, 17 Mar 2021 14:47:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CANiDSCvMvYVN0+zN3du2pJfGLPJ_f7Ees2YrfybJgUDmBjq2jQ@mail.gmail.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Tianshu Qiu <tian.shu.qiu@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On 3/17/21 1:50 AM, Ricardo Ribalda wrote:
> Hi Bingbu
> 
> Thanks for your review
> 
> On Tue, Mar 16, 2021 at 12:29 PM Bingbu Cao <bingbu.cao@linux.intel.com> wrote:
>>
>> Hi, Ricardo
>>
>> Thanks for your patch.
>> It looks fine for me, do you mind squash 2 patchsets into 1 commit?
> 
> Are you sure? There are two different issues that we are solving.

Oh, I see. I thought you were fixing 1 issue here.
Thanks!

> 
> Best regards!
> 
>>
>> On 3/15/21 8:34 PM, Ricardo Ribalda wrote:
>>> We are losing the reference to an allocated memory if try. Change the
>>> order of the check to avoid that.
>>>
>>> Cc: stable@vger.kernel.org
>>> Fixes: 6d5f26f2e045 ("media: staging/intel-ipu3-v4l: reduce kernel stack usage")
>>> Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
>>> ---
>>>  drivers/staging/media/ipu3/ipu3-v4l2.c | 11 +++++++----
>>>  1 file changed, 7 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
>>> index 60aa02eb7d2a..35a74d99322f 100644
>>> --- a/drivers/staging/media/ipu3/ipu3-v4l2.c
>>> +++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
>>> @@ -693,6 +693,13 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
>>>               if (inode == IMGU_NODE_STAT_3A || inode == IMGU_NODE_PARAMS)
>>>                       continue;
>>>
>>> +             /* CSS expects some format on OUT queue */
>>> +             if (i != IPU3_CSS_QUEUE_OUT &&
>>> +                 !imgu_pipe->nodes[inode].enabled) {
>>> +                     fmts[i] = NULL;
>>> +                     continue;
>>> +             }
>>> +
>>>               if (try) {
>>>                       fmts[i] = kmemdup(&imgu_pipe->nodes[inode].vdev_fmt.fmt.pix_mp,
>>>                                         sizeof(struct v4l2_pix_format_mplane),
>>> @@ -705,10 +712,6 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
>>>                       fmts[i] = &imgu_pipe->nodes[inode].vdev_fmt.fmt.pix_mp;
>>>               }
>>>
>>> -             /* CSS expects some format on OUT queue */
>>> -             if (i != IPU3_CSS_QUEUE_OUT &&
>>> -                 !imgu_pipe->nodes[inode].enabled)
>>> -                     fmts[i] = NULL;
>>>       }
>>>
>>>       if (!try) {
>>>
>>
>> --
>> Best regards,
>> Bingbu Cao
> 
> 
> 

-- 
Best regards,
Bingbu Cao
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
