Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C03A811CC4A
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 12:34:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97AD78881A;
	Thu, 12 Dec 2019 11:34:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fwUFRCB+WUKb; Thu, 12 Dec 2019 11:34:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D8A2C87079;
	Thu, 12 Dec 2019 11:34:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA24C1BF3EC
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 11:34:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C658388817
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 11:34:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fAHHMRj+saKx for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 11:34:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb2-smtp-cloud9.xs4all.net (lb2-smtp-cloud9.xs4all.net
 [194.109.24.26])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DE40587079
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 11:34:04 +0000 (UTC)
Received: from [IPv6:2001:983:e9a7:1:1c4a:480a:7ba1:9c65]
 ([IPv6:2001:983:e9a7:1:1c4a:480a:7ba1:9c65])
 by smtp-cloud9.xs4all.net with ESMTPA
 id fMjIiZATUGyJwfMjJixvan; Thu, 12 Dec 2019 12:34:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1576150442; bh=OKCpeFi5DoqJE6NWtMpQWIWKvSSGpGz8TupfDamuRC0=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=QQm1tvnXMaB8eQETcibkZHG7cfU5QXrNBF/Q0VRxwwq8FBPNFHPt+dbW1AL0ycKoB
 +zdJ4rnY7wYgb3lk4KIBiMaCnIWwvC98bay09Gsldwar8O0UbaB6Iyn5noITuYjs8h
 lnsC9fT7v8MP9QDCvDthuXoT0+SJlHHPUfWwxk+qQFBi+K6oAoM06f/wy0LSBoAeLk
 CqJqA7JNziaiXfN4hB7wL0ZvefHZeK8HiTSt3gfGXXSwDDQ3WrXbdxRRK84fPx/eSD
 yQYEs3E4lX4SdN8otglq5jvNvNxsqSY+1Cw0bghqACVNtwDz5K9sy+FLDMxxyNn2OU
 GMZfvnqogyfGQ==
Subject: Re: [PATCH] media: imx7-mipi-csis: Add the missed
 v4l2_async_notifier_cleanup in remove
To: Rui Miguel Silva <rmfrfs@gmail.com>, Chuhong Yuan <hslester96@gmail.com>
References: <20191209085828.16183-1-hslester96@gmail.com>
 <20191211105908.dw4lnuble3ejlnil@arch-thunder.localdomain>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <5013c486-3713-6e40-49a1-2fe452ba254f@xs4all.nl>
Date: Thu, 12 Dec 2019 12:34:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191211105908.dw4lnuble3ejlnil@arch-thunder.localdomain>
Content-Language: en-US
X-CMAE-Envelope: MS4wfKETIfBTI/Tow7zgY3i+e6lZwyq1XB1sOoDGL8WE5K6A7cM4MbKL9xtk6FSy+6hw3TL/fvtm1yzilRaba0DZeD7w7P4Kc3Zs1u1f2esQgam74drqWtoK
 KiuoQjq2rRiEH8UYJ54YWrx/9ExmJC/5pkAOY2pfs7sKtEvOKUsTQpvI1QF4QPf9fkGRvvLogtojkUxleao9rKMmO1lbK0O2JHpyTAEDBGWh12vzRsstU8YV
 azp2JXso9caELQQRsQYLVUa39eRzOR060Tzucn4GWvPTPhWdewD7IkSzB21EHyPyxRlWh2SwqtL5ZzKlonq/+XyUs/UUvbbCBl6P/n26Dt51PRL6kd76U16L
 OgwaEtNoijOrKalJdxgfFNZed9tWyeRWC/UwFnIwwvo5t++uaNSjgOF77f4+HP2DwivU+1Nc4Ge7mP+DTHHReA8cX7CwKOAu64tAQnRP10VY63mGitE1MuDK
 Ug7OJrn/4AaDINufittAK/Nf+trKMTrGkeqbX5sAAnDycM1u7p8jqT87DrSbV/Z8Zf5FfqpFxHLQotMFGLL5fdJ58WP6tfKFsQcXJ9gcMDy/s6wUDQH5J93h
 bNinzyLZUbqSYJ9aXSUcxM4a3LY1RATlOkQuHt5o5cAPW9XWxN7PGzh0vEa/eV325orLMRjZaylWOYBQ4S9iEPsRJ8rxmV8/3tXIFQIDJTFCtgUHyvDXWu9A
 FclNahOMPGQ=
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
Cc: devel@driverdev.osuosl.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Steve, Philipp,

I'd like one (or both) of you to look over this first.

It looks as if the subdev_notifier field of struct csi_state is never used,
except by the existing v4l2_async_notifier_unregister() call.

If I am right, then the real issue is that that field should be removed.

Regards,

	Hans


On 12/11/19 11:59 AM, Rui Miguel Silva wrote:
> Hi Chuhong,
> Thanks for the patch.
> 
> On Mon, Dec 09, 2019 at 04:58:28PM +0800, Chuhong Yuan wrote:
>> All drivers in imx call v4l2_async_notifier_cleanup() after unregistering
>> the notifier except this driver.
>> This should be a miss and we need to add the call to fix it.
>>
>> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> 
> Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>
> 
> ------
> Cheers,
>      Rui
>> ---
>>  drivers/staging/media/imx/imx7-mipi-csis.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
>> index 99166afca071..2bfa85bb84e7 100644
>> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
>> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
>> @@ -1105,6 +1105,7 @@ static int mipi_csis_remove(struct platform_device *pdev)
>>  	mipi_csis_debugfs_exit(state);
>>  	v4l2_async_unregister_subdev(&state->mipi_sd);
>>  	v4l2_async_notifier_unregister(&state->subdev_notifier);
>> +	v4l2_async_notifier_cleanup(&state->subdev_notifier);
>>  
>>  	pm_runtime_disable(&pdev->dev);
>>  	mipi_csis_pm_suspend(&pdev->dev, true);
>> -- 
>> 2.24.0
>>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
