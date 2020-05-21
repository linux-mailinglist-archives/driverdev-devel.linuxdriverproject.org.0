Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C07E01DCCBB
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 14:21:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6432C874DC;
	Thu, 21 May 2020 12:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9MZiSjm8ZEj2; Thu, 21 May 2020 12:21:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8276D874AA;
	Thu, 21 May 2020 12:21:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E8E3D1BF853
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 12:21:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DC56920425
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 12:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ciHMpU8ugu2r for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 12:21:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from zju.edu.cn (spam.zju.edu.cn [61.164.42.155])
 by silver.osuosl.org (Postfix) with ESMTP id F417320013
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 12:21:43 +0000 (UTC)
Received: by ajax-webmail-mail-app4 (Coremail) ; Thu, 21 May 2020 20:21:38
 +0800 (GMT+08:00)
X-Originating-IP: [222.205.77.158]
Date: Thu, 21 May 2020 20:21:38 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: dinghao.liu@zju.edu.cn
To: "Dan Carpenter" <dan.carpenter@oracle.com>
Subject: Re: Re: Re: [PATCH] [v2] media: staging: tegra-vde: fix runtime pm
 imbalance on error
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190906(84e8bf8f)
 Copyright (c) 2002-2020 www.mailtech.cn zju.edu.cn
In-Reply-To: <20200521120344.GH30374@kadam>
References: <20200521062746.6656-1-dinghao.liu@zju.edu.cn>
 <20200521112131.GG30374@kadam>
 <4b400526.bbc83.172370b23a0.Coremail.dinghao.liu@zju.edu.cn>
 <20200521120344.GH30374@kadam>
MIME-Version: 1.0
Message-ID: <10fd55e1.bbe50.172372e9216.Coremail.dinghao.liu@zju.edu.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: cS_KCgBHf3hScsZeyebtAQ--.38289W
X-CM-SenderInfo: qrrzjiaqtzq6lmxovvfxof0/1tbiAg0HBlZdtOPdcwAIs0
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJTRUUUbK0S07vEb7Iv0x
 C_Cr1lV2xY67kC6x804xWlV2xY67CY07I20VC2zVCF04k26cxKx2IYs7xG6rWj6s0DMIAI
 bVAFxVCF77xC64kEw24lV2xY67C26IkvcIIF6IxKo4kEV4ylV2xY628lY4IE4IxF12IF4w
 CS07vE84x0c7CEj48ve4kI8wCS07vE84ACjcxK6xIIjxv20xvE14v26w1j6s0DMIAIbVA2
 z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8Jr0_Cr1UMIAIbVA2z4x0Y4vEx4A2jsIE14v26r
 xl6s0DMIAIbVA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_GcCE3s1lV2xY62AIxVAIcxkEcVAq
 07x20xvEncxIr21lV2xY6c02F40EFcxC0VAKzVAqx4xG6I80ewCS07vEYx0E2Ix0cI8IcV
 AFwI0_Jr0_Jr4lV2xY6cIj6I8E87Iv67AKxVW8JVWxJwCS07vEOx8S6xCaFVCjc4AY6r1j
 6r4UMIAIbVACI402YVCY1x02628vn2kIc2xKxwCS07vE7I0Y64k_MIAIbVCY02Avz4vE14
 v_Xr1lV2xY6xkI7II2jI8vz4vEwIxGrwCS07vE42xK82IY6x8ErcxFaVAv8VW8uw4UJr1U
 MIAIbVCF72vE77IF4wCS07vE4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lV2xY6I8I3I0E5I8CrV
 AFwI0_Jr0_Jr4lV2xY6I8I3I0E7480Y4vE14v26r106r1rMIAIbVC2zVAF1VAY17CE14v2
 6r1q6r43MIAIbVCI42IY6xIIjxv20xvE14v26r1j6r1xMIAIbVCI42IY6xIIjxv20xvEc7
 CjxVAFwI0_Gr0_Cr1lV2xY6IIF0xvE42xK8VAvwI8IcIk0rVWrJr0_WFyUJwCS07vEIxAI
 cVC2z280aVAFwI0_Gr0_Cr1lV2xY6IIF0xvEx4A2jsIEc7CjxVAFwI0_Gr1j6F4UJbIYCT
 nIWIevJa73U
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
Cc: devel@driverdev.osuosl.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-pm@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

U29ycnksIEkgbWlzdW5kZXJzdG9vZCB5b3VyIGlkZWEgYmVmb3JlLiBBIG5ldyBmdW5jdGlvbiBp
cyAKdGhlIGJlc3Qgc29sdXRpb24gZm9yIHRoaXMgcHJvYmxlbS4KClJlZ2FyZHMsCkRpbmdoYW8K
CiZxdW90O0RhbiBDYXJwZW50ZXImcXVvdDsgJmx0O2Rhbi5jYXJwZW50ZXJAb3JhY2xlLmNvbSZn
dDvlhpnpgZPvvJoKPiBPbiBUaHUsIE1heSAyMSwgMjAyMCBhdCAwNzo0Mjo1NlBNICswODAwLCBk
aW5naGFvLmxpdUB6anUuZWR1LmNuIHdyb3RlOg0KPiA+IFdlIG5lZWQgdG8gbWFrZSBzdXJlIGlm
IHBtX3J1bnRpbWVfZ2V0X3N5bmMoKSBpcyBkZXNpZ25lZCB3aXRoDQo+ID4gc3VjaCBiZWhhdmlv
ciBiZWZvcmUgbW9kaWZ5aW5nIGl0LiAgDQo+ID4gDQo+ID4gSSByZWNlaXZlZCBhIHJlc3BvbnNl
IGZyb20gUmFmYWVsIHdoZW4gSSBjb21taXRlZCBhIHNpbWlsYXIgcGF0Y2g6DQo+ID4gaHR0cHM6
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS8yMC8xMTAwDQo+ID4gSXQgc2VlbXMgdGhhdCB0aGlzIGJl
aGF2aW9yIGlzIGludGVudGlvbmFsIGFuZCBuZWVkcyB0byBiZSBrZXB0Lg0KPiANCj4gWWVzLiAg
VGhpcyBpcyB3aHkgSSBoYXZlIHNhaWQgdHdpY2Ugb3IgdGhyZWUgdGltZXMgdG8gbm90IGNoYW5n
ZQ0KPiBwbV9ydW50aW1lX2dldF9zeW5jKCkgYnV0IGluc3RlYWQgdG8gd3JpdGUgYSByZXBsYWNl
bWVudC4NCj4gDQo+IEEgbGFyZ2UgcGVyY2VudCBvZiB0aGUgY2FsbGVycyBhcmUgYnVnZ3kuICBU
aGUgcG1fcnVudGltZV9nZXRfc3luYygpIGlzDQo+IGEgLTQgb24gUnVzdHkncyBBUEkgc2NhbGUu
DQo+IGh0dHA6Ly9zd2VuZy50aGUtZGF2aWVzLm5ldC9Ib21lL3J1c3R5cy1hcGktZGVzaWduLW1h
bmlmZXN0bw0KPiBPbmUgY291bGQgYXJndWUgdGhhdCBhbnl0aGluZyBhYm92ZSBhIC00IGlzIHJl
YWxseSBhIDIgaWYgeW91IHJlYWQNCj4gdGhlIGltcGxlbWVudGF0aW9uIHRob3Vyb3VnaGx5IGVu
b3VnaC4uLg0KPiANCj4gcmVnYXJkcywNCj4gZGFuIGNhcnBlbnRlcg0KPiANCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
