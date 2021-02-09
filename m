Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D920D31457E
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 02:18:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 090E986204;
	Tue,  9 Feb 2021 01:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GGzkrDas0gcO; Tue,  9 Feb 2021 01:18:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 220808618D;
	Tue,  9 Feb 2021 01:18:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C76AA1BF31D
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 01:18:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C413E87338
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 01:18:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OmN0+agak6uK for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 01:18:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
 by whitealder.osuosl.org (Postfix) with ESMTP id D2BFE8731F
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 01:18:06 +0000 (UTC)
Received: from [10.130.0.193] (unknown [113.200.148.30])
 by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dx7_LK4iFgkGUIAA--.10747S3; 
 Tue, 09 Feb 2021 09:18:03 +0800 (CST)
Subject: Re: [PATCH] staging: fix ignoring return value warning
To: Dan Carpenter <dan.carpenter@oracle.com>, Sascha Hauer <sha@pengutronix.de>
References: <1612689808-30985-1-git-send-email-tangyouling@loongson.cn>
 <20210208134517.GG2696@kadam> <20210208150618.GI8233@pengutronix.de>
 <20210208190237.GN20820@kadam>
From: Youling Tang <tangyouling@loongson.cn>
Message-ID: <13779748-ab8e-c7c3-11e4-5232836f5ae6@loongson.cn>
Date: Tue, 9 Feb 2021 09:18:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux mips64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20210208190237.GN20820@kadam>
X-CM-TRANSID: AQAAf9Dx7_LK4iFgkGUIAA--.10747S3
X-Coremail-Antispam: 1UD129KBjvJXoW7Zw1rAr1UWF4UtrWrJw1UWrg_yoW8Ar4fpa
 y0kFyjkFZ8tF4UKan0vw40v3WYy3srK348uFnYyw18u345XFyftr4UtrW5Ww15K34SkF1Y
 yFWUXa4jqa4DZFDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUvIb7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26r4j6ryUM7CY07I2
 0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
 A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xII
 jxv20xvEc7CjxVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVWxJVW8Jr1l84ACjcxK6I
 8E87Iv6xkF7I0E14v26r4UJVWxJr1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xv
 F2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r
 4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwCYjI0SjxkI62AI1cAE67vIY487
 MxkIecxEwVAFwVWkMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I
 0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWU
 tVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcV
 CY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_WFyUJVCq3wCI42IY6I8E87Iv
 67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r1j6r4UYxBIdaVFxhVjvjDU0xZFpf
 9x07b51v-UUUUU=
X-CM-SenderInfo: 5wdqw5prxox03j6o00pqjv00gofq/
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi, Dan


On 02/09/2021 03:02 AM, Dan Carpenter wrote:
> On Mon, Feb 08, 2021 at 04:06:18PM +0100, Sascha Hauer wrote:
>> Hi Dan,
>>
>> On Mon, Feb 08, 2021 at 04:45:17PM +0300, Dan Carpenter wrote:
>>> On Sun, Feb 07, 2021 at 05:23:28PM +0800, Youling Tang wrote:
>>>> Fix the below ignoring return value warning for device_reset.
>>>>
>>>> drivers/staging/mt7621-dma/mtk-hsdma.c:685:2: warning: ignoring return value
>>>> of function declared with 'warn_unused_result' attribute [-Wunused-result]
>>>>          device_reset(&pdev->dev);
>>>>          ^~~~~~~~~~~~ ~~~~~~~~~~
>>>> drivers/staging/ralink-gdma/ralink-gdma.c:836:2: warning: ignoring return value
>>>> of function declared with 'warn_unused_result' attribute [-Wunused-result]
>>>>          device_reset(&pdev->dev);
>>>>          ^~~~~~~~~~~~ ~~~~~~~~~~
>>>>
>>> We can't really do this sort of fix without the hardware to test it.
>>> This could be the correct fix or perhaps switching to device_reset_optional()
>>> is the correct fix.  We can't know unless we have the hardware to test.
>> When device_reset() is the wrong function then adding a return value
>> check will turn this into a runtime error for those who have the
>> hardware which will hopefully trigger them to tell us why reset_device
>> is wrong for them.
>> At least for a staging driver I find this procedure opportune.
>>
> That seems like sort of a jerk move...  What's the rush?  Someone will
> eventually be able to test this if we just wait around for a bit.
> Otherwise if no one has the hardware then eventually the driver will be
> deleted.
>
> regards,
> dan carpenter
We do not have the relevant hardware to test, this is just to solve a
compile-time warning.

Thanks,
Youling.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
