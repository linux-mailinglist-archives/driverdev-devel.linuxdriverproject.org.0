Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7996C4BA3BD
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Feb 2022 15:54:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA2CD82C3E;
	Thu, 17 Feb 2022 14:54:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uMTHEhfiL8c8; Thu, 17 Feb 2022 14:54:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7066C825C7;
	Thu, 17 Feb 2022 14:54:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 39FBF1BF9C8
 for <devel@linuxdriverproject.org>; Thu, 17 Feb 2022 14:54:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2796B60ACD
 for <devel@linuxdriverproject.org>; Thu, 17 Feb 2022 14:54:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id apw0t2GbwJIZ for <devel@linuxdriverproject.org>;
 Thu, 17 Feb 2022 14:54:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 07705600BB
 for <devel@driverdev.osuosl.org>; Thu, 17 Feb 2022 14:54:45 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id m14so10493546lfu.4
 for <devel@driverdev.osuosl.org>; Thu, 17 Feb 2022 06:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=11Msxpj6saXhCjkH+nNzBnzST2VwOlijviYdJ5EL8xY=;
 b=h5HMBr2qhvXOVt5Rfn/vHXtiCQDuOpsxkvtFXY0SaiScqWYvwpMJt7Ts5GoC0oM9lu
 oZj3IfLiiIcHvrxc3JwV25jjQsMvXlueV81dkAF15o0UJ2Wc1KHJgUiBV6+YYsPTH98G
 8nWuYP3W8FBS6N4SeEuBzBAYUDcjwdH/gP8aX0MTiZXvEu4z93liPMgb34C5FYDQctPi
 G5G0CrnohL2XTBUHXFu9UhV0YmK4fiIERHclNELjygJMVr+BGfUBjhvEtptQCK+yxtkm
 aeY1WFNrw8P8mIxnuUxVsLdP4wnwmi1KwCEPf/m/0deGHDK0O/gNRAMxVaGIpLfuPW6C
 jOmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=11Msxpj6saXhCjkH+nNzBnzST2VwOlijviYdJ5EL8xY=;
 b=tFtJSUCk+WNy5zS9uujKHaOJRl9VQVfz3KdLoDlBaYpcYIBUJ/LJ6weLvQFJKlYWvZ
 HRjl5pRxLcHWNqFl2P/9RcOw+3qJI39hagrfz1wVbZEUG4ZsTVdQiqbtzl3Mt/jQr4+F
 Q3V4pLWjN+9rcekFPnpAiTB37coFkQQ0b5zuzIaIpTXZCj1gVcCvCkhEwJXl6Ho1rHf/
 zLVqjVLklC3bCvLyGOC5nrVBWhpEbbXR50oQNAIHegX5G03O7Ns73hKmdPR5M5a8tY4H
 TCVyCT1nzjU5w6Qm0k3DqJy3ZFjW28M35GvQ0dIMNYRjCquepxJWpdiHo5tK3m2W50VJ
 1erg==
X-Gm-Message-State: AOAM530sr3yIReQAXqjD1vq1PwtVQAHGaM1nFxlT31WKnsWF0zrXM//C
 l/1VExMR1psLRo52EB7rZJSg8wR16I/0dxbCo+XHLg==
X-Google-Smtp-Source: ABdhPJxr6FXLaH1va6dG7alhD1yu9EwTbfNIoN/IWCmHeyc0IwCpkdkpbk1bdcrCPBR912vFQwi6slrPY3X5Othxofw=
X-Received: by 2002:a19:9144:0:b0:43b:86a4:1497 with SMTP id
 y4-20020a199144000000b0043b86a41497mr2301608lfj.254.1645109683832; Thu, 17
 Feb 2022 06:54:43 -0800 (PST)
MIME-Version: 1.0
References: <20220216093112.92469-1-Jerome.Pouiller@silabs.com>
 <20220216093112.92469-3-Jerome.Pouiller@silabs.com>
 <878ru924qr.fsf@kernel.org>
In-Reply-To: <878ru924qr.fsf@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 17 Feb 2022 15:54:05 +0100
Message-ID: <CAPDyKFqm3tGa+dtAGPn803rLnfY=tdcoX5DySnG-spFFqM=CrA@mail.gmail.com>
Subject: Re: [PATCH 2/2] staging: wfx: apply the necessary SDIO quirks for the
 Silabs WF200
To: Kalle Valo <kvalo@kernel.org>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCAxNyBGZWIgMjAyMiBhdCAxMDo1OSwgS2FsbGUgVmFsbyA8a3ZhbG9Aa2VybmVsLm9y
Zz4gd3JvdGU6Cj4KPiBKZXJvbWUgUG91aWxsZXIgPEplcm9tZS5Qb3VpbGxlckBzaWxhYnMuY29t
PiB3cml0ZXM6Cj4KPiA+IEZyb206IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJA
c2lsYWJzLmNvbT4KPiA+Cj4gPiBVbnRpbCBub3csIHRoZSBTRElPIHF1aXJrcyBhcmUgYXBwbGll
ZCBkaXJlY3RseSBmcm9tIHRoZSBkcml2ZXIuCj4gPiBIb3dldmVyLCBpdCBpcyBiZXR0ZXIgdG8g
YXBwbHkgdGhlIHF1aXJrcyBiZWZvcmUgZHJpdmVyIHByb2JpbmcuIFNvLAo+ID4gdGhpcyBwYXRj
aCByZWxvY2F0ZSB0aGUgcXVpcmtzIGluIHRoZSBNTUMgZnJhbWV3b3JrLgo+Cj4gSXQgd291bGQg
YmUgZ29vZCB0byBrbm93IGhvdyB0aGlzIGlzIGJldHRlciwgd2hhdCdzIHRoZSBjb25jcmV0ZQo+
IGFkdmFudGFnZT8KClRoZSBtbWMgY29yZSBoYXMgYSBxdWlyayBpbnRlcmZhY2UgZm9yIGFsbCB0
eXBlcyBvZiBjYXJkcwooZU1NQy9TRC9TRElPKSwgd2hpY2ggdGh1cyBrZWVwcyB0aGVzZSB0aGlu
Z3MgZnJvbSBzcHJpbmtsaW5nIHRvCmRyaXZlcnMuIEluIHNvbWUgY2FzZXMsIHRoZSBxdWlyayBu
ZWVkcyB0byBiZSBhcHBsaWVkIGFscmVhZHkgZHVyaW5nCmNhcmQgaW5pdGlhbGl6YXRpb24sIHdo
aWNoIGlzIGVhcmxpZXIgdGhhbiB3aGVuIHByb2JpbmcgYW4gU0RJTyBmdW5jCmRyaXZlciBvciB0
aGUgTU1DIGJsb2NrIGRldmljZSBkcml2ZXIuCgpQZXJoYXBzIGl0J3MgYSBnb29kIGlkZWEgdG8g
ZXhwbGFpbiBhIGJpdCBhYm91dCB0aGlzIGluIHRoZSBjb21taXQgbWVzc2FnZS4KCktpbmQgcmVn
YXJkcwpVZmZlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
