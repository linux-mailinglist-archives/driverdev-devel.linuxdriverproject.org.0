Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EE31EFEA6
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jun 2020 19:16:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7083F88266;
	Fri,  5 Jun 2020 17:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aWYx+96BGwDZ; Fri,  5 Jun 2020 17:16:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D40A882B3;
	Fri,  5 Jun 2020 17:16:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 67A931BF30B
 for <devel@linuxdriverproject.org>; Fri,  5 Jun 2020 17:16:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 64CB88712C
 for <devel@linuxdriverproject.org>; Fri,  5 Jun 2020 17:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gGls5M6u1Vxu for <devel@linuxdriverproject.org>;
 Fri,  5 Jun 2020 17:16:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9052A87115
 for <devel@driverdev.osuosl.org>; Fri,  5 Jun 2020 17:16:38 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id q14so9084756qtr.9
 for <devel@driverdev.osuosl.org>; Fri, 05 Jun 2020 10:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=mKwEVWcuU9C/nuiwJL6rIyPwKlGow9qq7XqSXfkexXo=;
 b=JW744sp/ZMjgMWxCbk1XkfcVNgxRtWJfRjXsMlGfic0he3IcOG6TbcxkuoS6aVv+t8
 kDDT5uGYJ5bjzaOwha4LHAMoOg6Lc3du03KhN9t/isduEood6I/Cd4VVWfqG/AR5aqRQ
 wHLEAUjBttw/BNHBpoZnVQwf0JU9LF//utPqtTRBcVqB4gVrBNzRsRhqt+aZeb6ljsKR
 91ZwfT3zsbqz3vAFDlgJzxFOMtHOxedLf2wfwdvbjTDkDsqo7Pq3FIt8qNYvO34vWM6r
 XYnk3HQGO9F3lI3Y2P9upf3S/zZx/j+5pluLh1M3B+eeB7PDjz55IADa/ghUI3Tj+b3z
 zywA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=mKwEVWcuU9C/nuiwJL6rIyPwKlGow9qq7XqSXfkexXo=;
 b=P+07ttLEFbfdQQ6ywmJ7qrOjaL4RSLoFmqWT5OmP5fdJJ3iFRZ4AjKCRUhjJRNRc04
 NtR2l+mG9aPFz122nl4ZCgcd5TLWMXTR48c22CuKymfHpSRKox/J0pVM0aIpmMw52JSv
 v0utLf9YyYGxaCSJpQ/eXsmBAVskh0MYYDFTBHUck+/zsUpfcDGcx156rIWWWgInAXlK
 M6sq6e9cb5Vs1tCjz5cHDQx19Z7bV+8Ie/EpqQMyyL9XPv9Xo0vSlT0FagnV5KmGgV3r
 YElv2FDA8oe3a6Jslix4AwUXvQGQZy6QERtugJtewXkx20U44i82Hqkvpw+O/8FNcXma
 Z4UA==
X-Gm-Message-State: AOAM532/r0+EMHg3NC2JfjgW4LcJo/aXoZ0W9KVJEOWV35TU73Jz2vcN
 fsxjemvy0xWqr4vuIJtwpFozhg==
X-Google-Smtp-Source: ABdhPJz14TforE3jgSwXfr9lStxyBFF1sjMdKoGyrBGGeSClYBkD8DrTRaHF2oSD9Cx42KVrs/3p2w==
X-Received: by 2002:ac8:42ce:: with SMTP id g14mr10938312qtm.117.1591377397661; 
 Fri, 05 Jun 2020 10:16:37 -0700 (PDT)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id z4sm330982qtu.33.2020.06.05.10.16.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Jun 2020 10:16:36 -0700 (PDT)
Message-ID: <7e74e15b7b3f9fc765182f1a43cfcf1e0e9602fc.camel@ndufresne.ca>
Subject: Re: [PATCH 2/3] media: cedrus: h264: Properly configure reference
 field
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jernej Skrabec <jernej.skrabec@siol.net>, paul.kocialkowski@bootlin.com,
 mripard@kernel.org
Date: Fri, 05 Jun 2020 13:16:35 -0400
In-Reply-To: <20200604185745.23568-3-jernej.skrabec@siol.net>
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
 <20200604185745.23568-3-jernej.skrabec@siol.net>
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGUgamV1ZGkgMDQganVpbiAyMDIwIMOgIDIwOjU3ICswMjAwLCBKZXJuZWogU2tyYWJlYyBhIMOp
Y3JpdCA6Cj4gV2hlbiBpbnRlcmxhY2VkIEgyNjQgY29udGVudCBpcyBiZWluZyBkZWNvZGVkLCBy
ZWZlcmVuY2VzIG11c3QgaW5kaWNhdGUKPiB3aGljaCBmaWVsZCBpcyBiZWluZyByZWZlcmVuY2Vk
LiBDdXJyZW50bHkgdGhpcyB3YXMgZG9uZSBieSBjaGVja2luZwo+IGNhcHR1cmUgYnVmZmVyIGZs
YWdzLiBIb3dldmVyLCB0aGF0IGlzIG5vdCBjb3JyZWN0IGJlY2F1c2UgY2FwdHVyZQo+IGJ1ZmZl
ciBtYXkgaG9sZCBib3RoIGZpZWxkcy4KPiAKPiBGaXggdGhpcyBieSBjaGVja2luZyBuZXdseSBp
bnRyb2R1Y2VkIGZsYWdzIGluIHJlZmVyZW5jZSBsaXN0cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBK
ZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+CgpQZXJoYXBzIGFuIGFkZGl0
aW9uYWwgcGF0Y2ggY291bGQgY2xlYW51cCB0aGUgbWlzcy1sZWFkaW5nIGNvbW1lbnQgaW4KdjRs
Ml9oMjY0X2RwYl9lbnRyeSBkZWZpbml0aW9uLgoKUmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVz
bmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYyB8IDYgKystLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYyBiL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+IGluZGV4IGNj
ZTUyN2JiZGY4Ni4uYzg3NzE3ZDE3ZWM1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+IEBAIC0xODMsNyArMTgzLDYgQEAgc3Rh
dGljIHZvaWQgX2NlZHJ1c193cml0ZV9yZWZfbGlzdChzdHJ1Y3QgY2VkcnVzX2N0eCAqY3R4LAo+
ICAJZm9yIChpID0gMDsgaSA8IG51bV9yZWY7IGkrKykgewo+ICAJCWNvbnN0IHN0cnVjdCB2NGwy
X2gyNjRfZHBiX2VudHJ5ICpkcGI7Cj4gIAkJY29uc3Qgc3RydWN0IGNlZHJ1c19idWZmZXIgKmNl
ZHJ1c19idWY7Cj4gLQkJY29uc3Qgc3RydWN0IHZiMl92NGwyX2J1ZmZlciAqcmVmX2J1ZjsKPiAg
CQl1bnNpZ25lZCBpbnQgcG9zaXRpb247Cj4gIAkJaW50IGJ1Zl9pZHg7Cj4gIAkJdTggZHBiX2lk
eDsKPiBAQCAtMTk4LDEyICsxOTcsMTEgQEAgc3RhdGljIHZvaWQgX2NlZHJ1c193cml0ZV9yZWZf
bGlzdChzdHJ1Y3QgY2VkcnVzX2N0eCAqY3R4LAo+ICAJCWlmIChidWZfaWR4IDwgMCkKPiAgCQkJ
Y29udGludWU7Cj4gIAo+IC0JCXJlZl9idWYgPSB0b192YjJfdjRsMl9idWZmZXIoY2FwX3EtPmJ1
ZnNbYnVmX2lkeF0pOwo+IC0JCWNlZHJ1c19idWYgPSB2YjJfdjRsMl90b19jZWRydXNfYnVmZmVy
KHJlZl9idWYpOwo+ICsJCWNlZHJ1c19idWYgPSB2YjJfdG9fY2VkcnVzX2J1ZmZlcihjYXBfcS0+
YnVmc1tidWZfaWR4XSk7Cj4gIAkJcG9zaXRpb24gPSBjZWRydXNfYnVmLT5jb2RlYy5oMjY0LnBv
c2l0aW9uOwo+ICAKPiAgCQlzcmFtX2FycmF5W2ldIHw9IHBvc2l0aW9uIDw8IDE7Cj4gLQkJaWYg
KHJlZl9idWYtPmZpZWxkID09IFY0TDJfRklFTERfQk9UVE9NKQo+ICsJCWlmIChyZWZfbGlzdFtp
XS5mbGFncyAmIFY0TDJfSDI2NF9SRUZFUkVOQ0VfRkxBR19CT1RUT01fRklFTEQpCj4gIAkJCXNy
YW1fYXJyYXlbaV0gfD0gQklUKDApOwo+ICAJfQo+ICAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
