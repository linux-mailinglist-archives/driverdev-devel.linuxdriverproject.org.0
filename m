Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8330E7E75BB
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Nov 2023 01:13:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A14742122;
	Fri, 10 Nov 2023 00:13:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A14742122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XEgp-ggdgEte; Fri, 10 Nov 2023 00:13:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 115DF420A3;
	Fri, 10 Nov 2023 00:13:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 115DF420A3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D12DB1BF990
 for <devel@linuxdriverproject.org>; Fri, 10 Nov 2023 00:13:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AA309835D3
 for <devel@linuxdriverproject.org>; Fri, 10 Nov 2023 00:13:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA309835D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p50tZEUC_tdQ for <devel@linuxdriverproject.org>;
 Fri, 10 Nov 2023 00:13:03 +0000 (UTC)
X-Greylist: delayed 1093 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 10 Nov 2023 00:13:02 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DCE4834C6
Received: from test.com (unknown [58.22.7.4])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4DCE4834C6
 for <devel@linuxdriverproject.org>; Fri, 10 Nov 2023 00:13:01 +0000 (UTC)
Received: from [192.168.0.131] (unknown [192.168.100.56])
 by outapp1 (Coremail) with SMTP id EWSowADx+sYHbU1lb_QiAA--.769S13;
 Fri, 10 Nov 2023 07:38:24 +0800 (CST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?b?VmzDoWRvdSBzY2h2w6FsZW7DqSBkYXJvdmFjw60gZm9uZHk7IOKCrCAyLDAw?=
 =?utf-8?q?0=2C000=2700_EUR?=
To: Recipients <webmaster@fjhxbank.com>
From: "Pan Richard Wahl" <webmaster@fjhxbank.com>
Date: Thu, 09 Nov 2023 15:38:08 -0800
X-CM-TRANSID: EWSowADx+sYHbU1lb_QiAA--.769S13
Message-Id: <654D6D71.04695F.27611@test.com>
X-Coremail-Antispam: 1UD129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
 VFW2AGmfu7bjvjm3AaLaJ3UjIYCTnIWjp_UUUOL7k0a2IF6w4xM7kC6x804xWl1xkIjI8I
 6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2
 x7M28EF7xvwVC0I7IYx2IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW0
 oVCq3wA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
 Cq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VAC
 jcxG62k0Y48FwI0_Jr0_Gr1lYx0E74AGY7Cv6cx26r48McvjeVCFs4IE7xkEbVWUJVW8Jw
 ACjcxG0xvEwIxGrwACI402YVCY1x02628vn2kIc2xKxwAKzVAC0xCFj2AI6cx7MxkF7I0E
 w4C26cxK6c8Ij28IcwCY02Avz4vE-syl42xK82IYc2Ij64vIr41l42xK82IY6x8ErcxFaV
 Av8VW8GwCF54CYxVAaw2AFwI0_Wr1UJVCq3s0DMxAqzxv26xkF7I0En4kS14v26F1UJr0E
 3s0q3wCFx2IqxVCFs4IE7xkEbVWUJVW8JwCFI7km07C267AKxVWrJr1j6s0q3s1lx2IqxV
 Aqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r4a
 6rW5MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_tr0E3s1lIxAIcVC0I7IYx2IY6x
 kF7I0E14v26rxl6s0DMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AK
 xVW0oVCq3wCI42IY6I8E87Iv6xkF7I0E14v26rxl6s0DYxBIdaVFxhVjvjDU0xZFpf9x07
 jnsqXUUUUU=
X-CM-SenderInfo: 5zhezthvwh2qhimk5uxdqnhudrp/
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
Reply-To: povertfoundationorg@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VsOhxb5lbsO9IHZsYXN0bsOtayBlLW1haWx1CgpQcm9zw61tZSBvIHBvdHZyemVuw60gdmxhc3Ru
aWN0dsOtIHZhxaFlaG8gZS1tYWlsdS4gQnlsIG7DoWhvZG5lIHZ5YnLDoW4gcG8gZWxla3Ryb25p
Y2vDqW0gcG9jw610YWNvdsOpbSBsb3NvdsOhbsOtIFNwaW4gYmFsbCwgYWJ5IG9iZHLFvmVsIGRh
ciB2ZSB2w73FoWkgMiAwMDAgMDAwIDAwIEVVUiBvZCBOYWRhY2UgUmljaGFyZGEgV2FobGEuIE9k
ZXNsYXQgcG90dnJ6b3ZhY8OtIGUtbWFpbCBuYTsgcG92ZXJ0Zm91bmRhdGlvbm9yZ0BnbWFpbC5j
b20gcHJvIHbDrWNlIHBvZHJvYm5vc3TDrQoKUGFuIFJpY2hhcmQgV2FobApFLW1haWw6IHBvdmVy
dGZvdW5kYXRpb25vcmdAZ21haWwuY29tCkFkcmVzYTogVmVybm9uIFRvd25zaGlwLCBOZXcgSmVy
c2V5LCBVU0EKUmljaGFyZCBXYWhsIEZvdW5kYXRpb24KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
