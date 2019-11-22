Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505291074AD
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Nov 2019 16:16:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C1145888F6;
	Fri, 22 Nov 2019 15:16:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k0zG2tkoz9ZC; Fri, 22 Nov 2019 15:16:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D6C5888B3;
	Fri, 22 Nov 2019 15:16:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4AFBD1BF2CC
 for <devel@linuxdriverproject.org>; Fri, 22 Nov 2019 15:16:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 45E7288866
 for <devel@linuxdriverproject.org>; Fri, 22 Nov 2019 15:16:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aULoBYmP0zNY for <devel@linuxdriverproject.org>;
 Fri, 22 Nov 2019 15:16:37 +0000 (UTC)
X-Greylist: delayed 00:07:11 by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 75EFF887DD
 for <devel@driverdev.osuosl.org>; Fri, 22 Nov 2019 15:16:37 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id 59so2661366qtg.8
 for <devel@driverdev.osuosl.org>; Fri, 22 Nov 2019 07:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=g5NUe7vlbEe2wgfNr66lt2YquPFqR05ke44iUlyinlU=;
 b=YB/UzBGOwUoXBzOrmcmzXISuMyursMtRnjg5a7p/fdYK+/DyPLb/40VRF9XWScfcGz
 xk80Cp/0W8vxIbTT9v4P1MpvrRTk794Qd/t6gFDmn5/Fy25IDRNmEnNLkYaUgJrV6q6B
 N/MPCdJvPY81oc1zHDlVYOi3VMQVJ2sv374uH74hYXkvjnb7/jaD+sHLy2y7MuC8odee
 xhxVxze/dTdua7AWxfk0P4nKulmMv8VsMuxBK/Sb6M/MA79onUv4a0Yx3vaG3bu+ael1
 kc2DY3xoyoqL3B+ZKPkPmh5TvvAAOELQusgdTguCjyWXA7UJSjw/x6+rhXWuVaWZ/xOB
 QxFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=g5NUe7vlbEe2wgfNr66lt2YquPFqR05ke44iUlyinlU=;
 b=eVzhAv/9bCB/B3eTW+lybeRPWu2Odwm8GlZvU8bV9KKJFAYrOWPCfgicWgyoZnjxAi
 IkiPRtDwcm8MMlNdIsxQangG0E786NYS8sCI2WvjcaXYjfw8NRFppWEmX99ZWVI2ndZS
 CuigujhLrzrKFAcNL7Xy/fRXaDMkON3GpfpolklB0XDKh4tpXHPCjXepKyQKEixTEGwJ
 q6jON36VDDJDIObVz9lv5XtuXtxOm+R9n5IpFTWwEwP/FbnglfgBrP8azPEG0YhtujP4
 Mr+DRazZuMMcrfAfBQg/3rkq1/JARWxqV9BX10WFupfL7np55iP7+Tx7IQ20A1KTQ//o
 yocg==
X-Gm-Message-State: APjAAAUYK3ZNLvdt9g0/ZoetiWmBHcwEETMkuO/iVQhx2KBhK8I9zfl3
 tmiEcbMYYNUhAG3G8zuGUfEeHew04uw=
X-Google-Smtp-Source: APXvYqzzaa1j6TzEWV7XVpPIlvEC8vo0OuVoYXDbGKbWsl9Gpc97/tOwGGj51dxMHx/44cMCTJ0MfA==
X-Received: by 2002:ac8:89c:: with SMTP id v28mr3765148qth.156.1574435365519; 
 Fri, 22 Nov 2019 07:09:25 -0800 (PST)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id c19sm3583774qtb.30.2019.11.22.07.09.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 07:09:24 -0800 (PST)
Message-ID: <767528be59275265072896e5c679e97575615fdd.camel@ndufresne.ca>
Subject: Re: [PATCH] media: hantro: Support H264 profile control
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Hirokazu Honda <hiroh@chromium.org>, ezequiel@collabora.com, 
 mchehab@kernel.org, gregkh@linuxfoundation.org,
 linux-media@vger.kernel.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, tfiga@chromium.org
Date: Fri, 22 Nov 2019 10:09:23 -0500
In-Reply-To: <20191122051608.128717-1-hiroh@chromium.org>
References: <20191122051608.128717-1-hiroh@chromium.org>
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGUgdmVuZHJlZGkgMjIgbm92ZW1icmUgMjAxOSDDoCAxNDoxNiArMDkwMCwgSGlyb2thenUgSG9u
ZGEgYSDDqWNyaXQgOgo+IFRoZSBIYW50cm8gRzEgZGVjb2RlciBzdXBwb3J0cyBILjI2NCBwcm9m
aWxlcyBmcm9tIEJhc2VsaW5lIHRvIEhpZ2gsIHdpdGgKPiB0aGUgZXhjZXB0aW9uIG9mIHRoZSBF
eHRlbmRlZCBwcm9maWxlLgo+IAo+IEV4cG9zZSB0aGUgVjRMMl9DSURfTVBFR19WSURFT19IMjY0
X1BST0ZJTEUgY29udHJvbCwgc28gdGhhdCB0aGUKPiBhcHBsaWNhdGlvbnMgY2FuIHF1ZXJ5IHRo
ZSBkcml2ZXIgZm9yIHRoZSBsaXN0IG9mIHN1cHBvcnRlZCBwcm9maWxlcy4KClRoYW5rcyBmb3Ig
dGhpcyBwYXRjaC4gRG8geW91IHRoaW5rIHdlIGNvdWxkIGFsc28gYWRkIHRoZSBMRVZFTCBjb250
cm9sCnNvIHRoZSBwcm9maWxlL2xldmVsIGVudW1lcmF0aW9uIGJlY29tZXMgY29tcGxldGUgPwoK
SSdtIHRoaW5raW5nIGl0IHdvdWxkIGJlIG5pY2UgaWYgdGhlIHY0bDIgY29tcGxpYW5jZSB0ZXN0
IG1ha2Ugc3VyZQp0aGF0IGNvZGVjcyBkbyBpbXBsZW1lbnQgdGhlc2UgY29udHJvbHMgKGJvdGgg
c3RhdGVmdWwgYW5kIHN0YXRlbGVzcyksCml0J3MgZXNzZW50aWFsIGZvciBzdGFjayB3aXRoIHNv
ZnR3YXJlIGZhbGxiYWNrLCBvciBtdWx0aXBsZSBjYXBhYmxlCmNvZGVjIGhhcmR3YXJlIGJ1dCB3
aXRoIGRpZmZlcmVudCBjYXBhYmlsaXRpZXMuCgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhpcm9rYXp1
IEhvbmRhIDxoaXJvaEBjaHJvbWl1bS5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRp
YS9oYW50cm8vaGFudHJvX2Rydi5jIHwgMTAgKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwg
MTAgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL2hhbnRyb19kcnYuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJv
X2Rydi5jCj4gaW5kZXggNmQ5ZDQxMTcwODMyLi45Mzg3NjE5MjM1ZDggMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiArKysgYi9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+IEBAIC0zNTUsNiArMzU1LDE2IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJvX2N0cmwgY29udHJvbHNbXSA9IHsKPiAgCQkJLmRl
ZiA9IFY0TDJfTVBFR19WSURFT19IMjY0X1NUQVJUX0NPREVfQU5ORVhfQiwKPiAgCQkJLm1heCA9
IFY0TDJfTVBFR19WSURFT19IMjY0X1NUQVJUX0NPREVfQU5ORVhfQiwKPiAgCQl9LAo+ICsJfSwg
ewo+ICsJCS5jb2RlYyA9IEhBTlRST19IMjY0X0RFQ09ERVIsCj4gKwkJLmNmZyA9IHsKPiArCQkJ
LmlkID0gVjRMMl9DSURfTVBFR19WSURFT19IMjY0X1BST0ZJTEUsCj4gKwkJCS5taW4gPSBWNEwy
X01QRUdfVklERU9fSDI2NF9QUk9GSUxFX0JBU0VMSU5FLAo+ICsJCQkubWF4ID0gVjRMMl9NUEVH
X1ZJREVPX0gyNjRfUFJPRklMRV9ISUdILAo+ICsJCQkubWVudV9za2lwX21hc2sgPQo+ICsJCQlC
SVQoVjRMMl9NUEVHX1ZJREVPX0gyNjRfUFJPRklMRV9FWFRFTkRFRCksCj4gKwkJCS5kZWYgPSBW
NEwyX01QRUdfVklERU9fSDI2NF9QUk9GSUxFX01BSU4sCj4gKwkJfQo+ICAJfSwgewo+ICAJfSwK
PiAgfTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
