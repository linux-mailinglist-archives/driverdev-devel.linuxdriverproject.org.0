Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B137A22EFA2
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jul 2020 16:18:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B0AA7860C5;
	Mon, 27 Jul 2020 14:18:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 81xQYg6qdGgd; Mon, 27 Jul 2020 14:18:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 95CDC85FB0;
	Mon, 27 Jul 2020 14:17:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2104C1BF35C
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 14:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1D9FB878C0
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 14:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NWuKcjpRtJ3r for <devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 14:17:56 +0000 (UTC)
X-Greylist: delayed 00:37:47 by SQLgrey-1.7.6
Received: from zju.edu.cn (spam.zju.edu.cn [61.164.42.155])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6A6F785B95
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 14:17:53 +0000 (UTC)
Received: by ajax-webmail-mail-app4 (Coremail) ; Mon, 27 Jul 2020 21:39:57
 +0800 (GMT+08:00)
X-Originating-IP: [210.32.144.186]
Date: Mon, 27 Jul 2020 21:39:57 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: dinghao.liu@zju.edu.cn
To: "Larry Finger" <Larry.Finger@lwfinger.net>
Subject: Re: Re: [PATCH] Staging: rtl8188eu: rtw_mlme: Fix uninitialized
 variable authmode
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190906(84e8bf8f)
 Copyright (c) 2002-2020 www.mailtech.cn zju.edu.cn
In-Reply-To: <66d9502e-682f-6ccd-ef90-138feee0c2ae@lwfinger.net>
References: <20200724122957.30411-1-dinghao.liu@zju.edu.cn>
 <20200724132836.GC316746@kroah.com>
 <66d9502e-682f-6ccd-ef90-138feee0c2ae@lwfinger.net>
MIME-Version: 1.0
Message-ID: <1721a94f.13572.173908057cb.Coremail.dinghao.liu@zju.edu.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: cS_KCgBn6Pwt2R5fMeheAA--.11594W
X-CM-SenderInfo: qrrzjiaqtzq6lmxovvfxof0/1tbiAggHBlZdtPRcawAesp
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJTRUUUbGCS07vEb7Iv0x
 C_Ar1lV2xY67kC6x804xWlV2xY67CY07I20VC2zVCF04k26cxKx2IYs7xG6rWj6s0DMIAI
 bVAFxVCF77xC64kEw24lV2xY67C26IkvcIIF6IxKo4kEV4ylV2xY628lY4IE4IxF12IF4w
 CS07vE84x0c7CEj48ve4kI8wCS07vE84ACjcxK6xIIjxv20xvE14v26w1j6s0DMIAIbVA2
 z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVWxJr0_GcWlV2xY628EF7xvwVC2z280aVAFwI0_Gc
 CE3s1lV2xY628EF7xvwVC2z280aVCY1x0267AKxVW0oVCq3wCS07vEe2I262IYc4CY6c8I
 j28IcVAaY2xG8wCS07vE5I8CrVACY4xI64kE6c02F40Ex7xfMIAIbVAv7VC0I7IYx2IY67
 AKxVWUJVWUGwCS07vEYx0Ex4A2jsIE14v26r1j6r4UMIAIbVAm72CE4IkC6x0Yz7v_Jr0_
 Gr1lV2xY6x02cVAKzwCS07vEc2xSY4AK67AK6ry8MIAIbVCY0x0Ix7I2Y4AK64vIr41lV2
 xY6xAIw28IcVCjz48v1sIEY20_GFWkJr1UJwCS07vE4x8a6x804xWlV2xY6xC20s026xCa
 FVCjc4AY6r1j6r4UMIAIbVC20s026c02F40E14v26r1j6r18MIAIbVC20s026x8GjcxK67
 AKxVWUGVWUWwCS07vEx4CE17CEb7AF67AKxVWUtVW8ZwCS07vEIxAIcVC0I7IYx2IY67AK
 xVWUJVWUCwCS07vEIxAIcVC0I7IYx2IY6xkF7I0E14v26r1j6r4UMIAIbVCI42IY6xAIw2
 0EY4v20xvaj40_WFyUJVCq3wCS07vEIxAIcVC2z280aVAFwI0_Jr0_Gr1lV2xY6IIF0xvE
 x4A2jsIEc7CjxVAFwI0_Jr0_GrUvcSsGvfC2KfnxnUU==
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
 Shreeya Patel <shreeya.patel23498@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> 
> Yes, in this routine, it would be possible for authmode to not be set; however, 
> later code only compares it to either _WPA_IE_ID_ or _WPA2_IE_ID_. It is never 
> used in a way that an unset value could make the program flow be different by 
> arbitrarily setting the value to zero. Thus your statement "Then authmode may 
> contain a garbage value and influence the execution flow of this function." is 
> false.
> 

It's clear to me. Thank you for your advice.

Regards,
Dinghao
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
