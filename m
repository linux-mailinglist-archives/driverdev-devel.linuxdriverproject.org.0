Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D4122F2E8
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jul 2020 16:46:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A923620552;
	Mon, 27 Jul 2020 14:46:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pzwf9vNlHsHQ; Mon, 27 Jul 2020 14:46:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C26C520461;
	Mon, 27 Jul 2020 14:46:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD3F31BF35C
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 14:46:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5C6B885C94
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 14:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pot0bru1TTdm for <devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 14:45:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from zju.edu.cn (mail.zju.edu.cn [61.164.42.155])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 159FF85C92
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 14:45:31 +0000 (UTC)
Received: by ajax-webmail-mail-app4 (Coremail) ; Mon, 27 Jul 2020 22:45:24
 +0800 (GMT+08:00)
X-Originating-IP: [210.32.144.186]
Date: Mon, 27 Jul 2020 22:45:24 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: dinghao.liu@zju.edu.cn
To: "Dan Carpenter" <dan.carpenter@oracle.com>
Subject: Re: Re: [PATCH] Staging: rtl8188eu: rtw_mlme: Fix uninitialized
 variable authmode
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190906(84e8bf8f)
 Copyright (c) 2002-2020 www.mailtech.cn zju.edu.cn
In-Reply-To: <20200727132351.GF1913@kadam>
References: <20200724122957.30411-1-dinghao.liu@zju.edu.cn>
 <20200727114451.GA1913@kadam> <20200727132351.GF1913@kadam>
MIME-Version: 1.0
Message-ID: <37fe50b0.13978.17390bc440f.Coremail.dinghao.liu@zju.edu.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: cS_KCgD3__+E6B5fh0ZfAA--.11823W
X-CM-SenderInfo: qrrzjiaqtzq6lmxovvfxof0/1tbiAggHBlZdtPRcawAjsU
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJTRUUUbGCS07vEb7Iv0x
 C_Cr1lV2xY67kC6x804xWlV2xY67CY07I20VC2zVCF04k26cxKx2IYs7xG6rWj6s0DMIAI
 bVAFxVCF77xC64kEw24lV2xY67C26IkvcIIF6IxKo4kEV4ylV2xY628lY4IE4IxF12IF4w
 CS07vE84x0c7CEj48ve4kI8wCS07vE84ACjcxK6xIIjxv20xvE14v26w1j6s0DMIAIbVA2
 z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW0oVCq3wCS07vE84ACjcxK6I8E87Iv67AKxVW0oV
 Cq3wCS07vE84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s0DMIAIbVAS0I0E0xvYzxvE52x0
 82IY62kv0487MIAIbVAqx4xG64xvF2IEw4CE5I8CrVC2j2WlV2xY6cIj6xIIjxv20xvE14
 v26r1j6r18MIAIbVAv7VC2z280aVAFwI0_Jr0_Gr1lV2xY6cvjeVCFs4IE7xkEbVWUJVW8
 JwCS07vE7I0Y64k_MIAIbVCY02Avz4vE14v_XrylV2xY6xkI7II2jI8vz4vEwIxGrwCS07
 vE42xK82IY6x8ErcxFaVAv8VW8uw4UJr1UMIAIbVCF72vE77IF4wCS07vE4I8I3I0E4IkC
 6x0Yz7v_Jr0_Gr1lV2xY6I8I3I0E5I8CrVAFwI0_Jr0_Jr4lV2xY6I8I3I0E7480Y4vE14
 v26r106r1rMIAIbVC2zVAF1VAY17CE14v26r1q6r43MIAIbVCI42IY6xIIjxv20xvE14v2
 6r1j6r1xMIAIbVCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lV2xY6IIF0xvE42xK8V
 AvwI8IcIk0rVWrZr1j6s0DMIAIbVCI42IY6I8E87Iv67AKxVWUJVW8JwCS07vEIxAIcVC2
 z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUU==
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
 kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, Stefano Brivio <sbrivio@redhat.com>,
 Shreeya Patel <shreeya.patel23498@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> I review things in the order that they appear in my inbox so I hadn't
> seen Greg and Larry's comments.  You've now stumbled into an area of
> politics where you have conflicting reviews...  :P  Fortunately, we're
> all of us reasonable people.
> 
> I think your patch is correct in that it is what the original coder
> intended.  You just need to sell the patch correctly in the commit
> message.  The real danger of the original code would be if "authmode" is
> accidentally 0x30 or 0xdd just because it was uninitialized.  Setting it
> to zero ensures that it is not and it also matches how this is handled
> in the rtl8723bs driver.  This matches the original author's intention.
> 
> So:
> 
> 1) Re-write the commit message.
> 
>     The variable authmode can be uninitialized.  The danger would be
>     if it equals _WPA_IE_ID_ (0xdd) or _WPA2_IE_ID_ (0x33).  We can
>     avoid this by setting it to zero instead.  This is the approach that
>     was used in the rtl8723bs driver.
> 
> 2) Add a fixes tag.
>    Fixes: 7b464c9fa5cc ("staging: r8188eu: Add files for new driver - part 4")
> 
> 3) Change the commit to Larry's style with the "else if" and "else".
>    Sometimes people just disagree about style so it's easiest to go with
>    whatever the maintainer (Larry) wants.  It's not worth debating one
>    way or the other so just redo it.
> 
> Then resend.  Google for "how to send a v2 patch" to get the right
> format.
> 
> regards,
> dan carpenter
> 

Your advice is very helpful to me, thanks! I will prepare v2 patch and
resend it soon.

Regards,
Dinghao

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
