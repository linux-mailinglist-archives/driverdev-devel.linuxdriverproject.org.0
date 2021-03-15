Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0527B33ABFE
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 08:07:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E19A430C4;
	Mon, 15 Mar 2021 07:07:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E1vQIM4sXa20; Mon, 15 Mar 2021 07:07:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C276E430BA;
	Mon, 15 Mar 2021 07:07:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E3B7F1BF317
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 07:07:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D1F31430BA
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 07:07:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3_pJO2pGrG97 for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 07:07:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com
 [IPv6:2607:f8b0:4864:20::133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B176430A3
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 07:07:32 +0000 (UTC)
Received: by mail-il1-x133.google.com with SMTP id k2so8407172ili.4
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 00:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=OMZlpxOALJ+FhkjgrI4Loi+DAr/PRLsQSLLeynmAtnM=;
 b=iwZqH2Y77+XZlCK9uRpPzdW/6/4INrA0nwhaKooTX3cSMmWlydoYRrhRJI+RRjryH8
 z+JhCoyNpi0c14VeHevwpMnA0RfX9Lk9ZzxYUMD3svLd5olt6SetcTpj5QBU7rTLstNn
 +gj6goImNPGHKVahQxCF1Cac9J2vzfVS2pcl6YfwKpRSbLysOCSu/nssA2ba63Kiz22P
 xJYVu5zVsBZaM+2SdeOrVypkyQCswM1q2dm343YXOrkM8kgtK5ZuVRBJdY1ORuHYi3aH
 VtP8Onw9UPtlkX8uxkJO0ZwT0U8Q0K8ZyNkPXYUp2lK8VXuZk+4ptXZs1ilN2IwyWBmQ
 RHfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=OMZlpxOALJ+FhkjgrI4Loi+DAr/PRLsQSLLeynmAtnM=;
 b=JXbHVg9e6pHsdLDD4kBAOQZXPyz2NSfsgztj74ZBeIEfD/IihZAfljXSZurIe/EEjF
 fJpmAdfJ+EL9P79TVmVyqUw8SiGvwz04mwtE1nopF0zDcS38HsGoNc9TXynXQcU1R9Gt
 /vYdsyUpqg/kErfcBxLhghDsV4nX+bWkT1Fyrf7rT3iuSlClBQAvUu7/WNgJ62ilpw6J
 vflNozj9m4ncKIPd/1BVY+2ydo7UFNeENMAJDjk7fv+oge6zXFpde2MiEIhVJZbBjxeR
 Ug6lH2vkWHHnQkbNzWkz+bK8hVH5DJMJP0B+eb50aO427bs3A85zjejv7ug+1T46zbdM
 Ay+w==
X-Gm-Message-State: AOAM532wjhjAMHAKsLXenhSzy7xNqhJpEm6oHuaGfjYkyMgJAEAdSDTQ
 ro45aC7dxtrlLCnAGfZpollA+9chnLph18FVxfw=
X-Google-Smtp-Source: ABdhPJyr3bKTMG1gM6aPnfPIpFl9M1E+asL73SRqTWwsJY9y4+jxxTl1ypBmbtmMRmD2D4p4esMhEpaTBHIewaIcmn4=
X-Received: by 2002:a92:d2c5:: with SMTP id w5mr11041765ilg.244.1615792051376; 
 Mon, 15 Mar 2021 00:07:31 -0700 (PDT)
MIME-Version: 1.0
From: Zhengxun Li <zhengxunli.mxic@gmail.com>
Date: Mon, 15 Mar 2021 15:07:20 +0800
Message-ID: <CACY_kjSRbgSWsfo+JTyQdqorQ+wcy8OqAtKSbJt6tL4t-AUciw@mail.gmail.com>
Subject: Re: [PATCH v10 5/9] staging: clocking-wizard: Add support for dynamic
 reconfiguration
To: shubhrajyoti.datta@xilinx.com
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 shubhrajyoti.datta@gmail.com, slwu@mxic.com.tw, sboyd@kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, juliensu@mxic.com.tw,
 robh+dt@kernel.org, git@xilinx.com, miquel.raynal@bootlin.com,
 linux-clk@vger.kernel.org, zhengxunli@mxic.com.tw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgU2h1YmhyYWp5b3RpLAoKTXkgbmFtZSBpcyBaaGVuZ3h1biBhbmQgSSBhbSB0aGUgZW5naW5l
ZXIgZnJvbSBNYWNyb25peC4gV2UgYXJlCnVzaW5nIHRoZSBwbGF0Zm9ybSBQaWNvWmVkIDcwMTUv
NzAzMCBTT00gKFN5c3RlbSBPbiBNb2R1bGUpLAp3aGljaCBpcyBiYXNlZCBvbiBYaWxpbnggWnlu
ccKuLTcwMDAgQWxsIFByb2dyYW1tYWJsZSAoQVApIFNvQyB0bwp2ZXJpZnkgb3VyIEZsYXNoIGRy
aXZlci4gT2YgY291cnNlLCB3ZSBhcmUgYWxzbyB1c2luZyB5b3VyIGNsb2NrCndpemFyZCwgb3Vy
IHZlcnNpb24gc2VlbXMgdG8gYmUgdjUuMiwgYnV0IHNvbWV0aGluZyB3ZW50IHdyb25nLgoKK3N0
YXRpYyBpbnQgY2xrX3d6cmRfZHluYW1pY19yZWNvbmZpZyhzdHJ1Y3QgY2xrX2h3ICpodywgdW5z
aWduZWQgbG9uZyByYXRlLAorIHVuc2lnbmVkIGxvbmcgcGFyZW50X3JhdGUpCit7CisgaW50IGVy
cjsKKyB1MzIgdmFsdWU7CisgdW5zaWduZWQgbG9uZyBmbGFncyA9IDA7Cisgc3RydWN0IGNsa193
enJkX2RpdmlkZXIgKmRpdmlkZXIgPSB0b19jbGtfd3pyZF9kaXZpZGVyKGh3KTsKKyB2b2lkIF9f
aW9tZW0gKmRpdl9hZGRyID0gZGl2aWRlci0+YmFzZSArIGRpdmlkZXItPm9mZnNldDsKKworIGlm
IChkaXZpZGVyLT5sb2NrKQorIHNwaW5fbG9ja19pcnFzYXZlKGRpdmlkZXItPmxvY2ssIGZsYWdz
KTsKKyBlbHNlCisgX19hY3F1aXJlKGRpdmlkZXItPmxvY2spOworCisgdmFsdWUgPSBESVZfUk9V
TkRfQ0xPU0VTVChwYXJlbnRfcmF0ZSwgcmF0ZSk7CisKKyAvKiBDYXAgdGhlIHZhbHVlIHRvIG1h
eCAqLworIG1pbl90KHUzMiwgdmFsdWUsIFdaUkRfRFJfTUFYX0lOVF9ESVZfVkFMVUUpOworCisg
LyogU2V0IGRpdmlzb3IgYW5kIGNsZWFyIHBoYXNlIG9mZnNldCAqLworIHdyaXRlbCh2YWx1ZSwg
ZGl2X2FkZHIpOworIHdyaXRlbCgweDAwLCBkaXZfYWRkciArIFdaUkRfRFJfRElWX1RPX1BIQVNF
X09GRlNFVCk7CgpXaHkgcGhhc2UgYWx3YXlzIHNldCB0byB6ZXJvPyBXZSB3YW50IHRvIHN1cHBv
cnQgRFRSIG9wZXJhdGlvbiBpbgpGbGFzaCBkcml2ZXIuIENhbiB5b3UgYWRkIGEgc2V0X3BoYXNl
IGZ1bmN0aW9uIHRvIGFkanVzdCB0aGUgcGhhc2U/CgorIC8qIENoZWNrIHN0YXR1cyByZWdpc3Rl
ciAqLworIGVyciA9IHJlYWRsX3BvbGxfdGltZW91dChkaXZpZGVyLT5iYXNlICsgV1pSRF9EUl9T
VEFUVVNfUkVHX09GRlNFVCwKKyB2YWx1ZSwgdmFsdWUgJiBXWlJEX0RSX0xPQ0tfQklUX01BU0ss
CisgV1pSRF9VU0VDX1BPTEwsIFdaUkRfVElNRU9VVF9QT0xMKTsKKyBpZiAoZXJyKQorIGdvdG8g
ZXJyX3JlY29uZmlnOworCisgLyogSW5pdGlhdGUgcmVjb25maWd1cmF0aW9uICovCisgd3JpdGVs
KFdaUkRfRFJfQkVHSU5fRFlOQV9SRUNPTkYsCisgZGl2aWRlci0+YmFzZSArIFdaUkRfRFJfSU5J
VF9SRUdfT0ZGU0VUKTsKKworIC8qIENoZWNrIHN0YXR1cyByZWdpc3RlciAqLworIGVyciA9IHJl
YWRsX3BvbGxfdGltZW91dChkaXZpZGVyLT5iYXNlICsgV1pSRF9EUl9TVEFUVVNfUkVHX09GRlNF
VCwKKyB2YWx1ZSwgdmFsdWUgJiBXWlJEX0RSX0xPQ0tfQklUX01BU0ssCisgV1pSRF9VU0VDX1BP
TEwsIFdaUkRfVElNRU9VVF9QT0xMKTsKCkFjY29yZGluZyB0byBwZzAxNS1jbGstd2l6LnBkZiwg
Q2xvY2tpbmcgV2l6YXJkIHY1LjIgYW5kIGxhdGVyLCBuZWVkIHRvIHdyaXRlCjB4MDAwMDAwMDcg
Zm9sbG93ZWQgYnkgMHgwMDAwMDAwMiBpbnRvIENsb2NrIENvbmZpZ3VyYXRpb24gUmVnaXN0ZXIg
MjMsIHRvCmNvbnNvbGlkYXRlIHRoZSByZWR1bmRhbnQgYml0cyB0aGF0IHRoZSBJUCBoYXMgdXBn
cmFkZWQsIHJpZ2h0PwoKQ2FuIHlvdSBjb21wYXRpYmxlIHRvIHY1LjI/CgpUaGFua3MsClpoZW5n
eHVuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
