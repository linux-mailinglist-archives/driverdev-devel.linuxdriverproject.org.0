Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 472C65355BA
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 May 2022 23:40:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A38F2847DA;
	Thu, 26 May 2022 21:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DomDdaA8pThf; Thu, 26 May 2022 21:40:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3351484787;
	Thu, 26 May 2022 21:40:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 773E51BF30E
 for <devel@linuxdriverproject.org>; Thu, 26 May 2022 21:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5FAE261004
 for <devel@linuxdriverproject.org>; Thu, 26 May 2022 21:40:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m2T0dPfPxEnd for <devel@linuxdriverproject.org>;
 Thu, 26 May 2022 21:40:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 26AD060FDF
 for <devel@driverdev.osuosl.org>; Thu, 26 May 2022 21:40:04 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id p19so1666368wmg.2
 for <devel@driverdev.osuosl.org>; Thu, 26 May 2022 14:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:from:mime-version:content-transfer-encoding
 :content-description:subject:to:date:reply-to;
 bh=p2LxBzPqtoa7PPaHD1WiLjbNM3QAxmgjnnvSLvXWOgk=;
 b=TQJoD1iXeyI02/7Deune0y0XUIQRaTIf8+rCf8VLle9rtRas2G/cA4quqiYiVNmGoe
 2+rm2Rxyf8KniIV7p9aPYYVgv1iJpVx45S6FcjEo3lNxh7FPF2JNA4A94WhZnYaJJJUw
 YIhfokDziQkGPAdcvaPuLImkjFRd3MKDJQtEb3S4oATQ0XxDDdgwsaLZX/Ca/Y3lq8KY
 FepzwevpnTIMLlf/bEzHvGuoLLF2or9hx+zrBJm0HSWk9UN2rbVeFYH8M0BXK6aU2CXB
 pelsWJaXff1aLAXib7GHTwRDk5gjku11FPwN37mGmuDEX6oXnkyVWC0LEr0ybRL3Za6e
 QMFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:from:mime-version
 :content-transfer-encoding:content-description:subject:to:date
 :reply-to;
 bh=p2LxBzPqtoa7PPaHD1WiLjbNM3QAxmgjnnvSLvXWOgk=;
 b=fnE4DkQBYgkunPu0acQXvXyKeeE8gBLMC6aHfvUZhYGa2zQWiuh5f+R+eKGt1kfAr9
 0eycMzelux1M6muXH+zPBHPWm//vaGe9d+Wytycgs+oC7LgFk62CFZNF9ODGVVkURVz1
 uvG5ENPw8dlRAlwbdK5UMx2lz8xDSUplRJjWCkWPb7+vilDbWRkyLrdbFC3icw3HaEou
 65T561DBqaG2o6TnvYh1wcZqP3c6iV/KwAM++dzTuFMNn0+JOqwIGPdnii+7SrKRO9iz
 uAZUyWC9OZ6vSkUk2KCAVi1UjhuTkMuOKyvlNhuwsXecP5FySdgSSS/TIgWhZpTG1qMD
 aCjg==
X-Gm-Message-State: AOAM530tml1RweaMyl2AU+pEMmL+tJGqOuTtptDI3ufQw/vLp95pqANm
 PRyBQwtK4HBG7pYjtTJkanU=
X-Google-Smtp-Source: ABdhPJyV9bZGlyyZNBz7ppPHHwby1sNtBoGSUVaeXin1y/wHk4PqnTgx9zZQaIIrXtphZUGf+C4AQA==
X-Received: by 2002:a7b:c0c4:0:b0:397:56f3:55dc with SMTP id
 s4-20020a7bc0c4000000b0039756f355dcmr4037428wmh.135.1653601202092; 
 Thu, 26 May 2022 14:40:02 -0700 (PDT)
Received: from [192.168.43.244] ([197.211.61.39])
 by smtp.gmail.com with ESMTPSA id
 f12-20020a05600c154c00b003942a244f30sm461181wmg.9.2022.05.26.14.39.32
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Thu, 26 May 2022 14:39:53 -0700 (PDT)
Message-ID: <628ff3a9.1c69fb81.b8ee5.27f3@mx.google.com>
From: "Mr.Kalstrom james" <benmorrison684@gmail.com>
X-Google-Original-From: "Mr.Kalstrom james"<info@net.org>
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re.Delivery Your Consignment Box Fund
To: Recipients <info@net.org>
Date: Thu, 26 May 2022 14:39:30 -0700
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
Reply-To: kalstromjames01@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

IAoKTUVTU0FHRSBGUk9NIENISUVGIElNTUlHUkFUSU9OIE9GRklDRVIuCkxvcyBBbmdlbGVzIElu
dGVybmF0aW9uYWwgQWlycG9ydC4KMzQzNSBXaWxzaGlyZSBCbHZkLiwgU3VpdGUgMTAyNQpMb3Mg
QW5nZWxlcywgQ0EgOTAwMTAuCgoKCkhlbGxvIG15IGZyaWVuZCwgSSBhbSBNci4gS2Fsc3Ryb20g
Uy4gSmFtZXMsIGhlYWQgb2YgbHVnZ2FnZS9iYWdnYWdlIHN0b3JhZ2UgZmFjaWxpdGllcyBoZXJl
IGF0IHRoZSBMb3MgQW5nZWxlcyBJbnRlcm5hdGlvbmFsIEFpcnBvcnQsIFtMQVhdIENBIDkwMDEw
LiBVU0EuRHVyaW5nIG15IHJlY2VudCB3aXRoaGVsZCBwYWNrYWdlIHJvdXRpbmUgY2hlY2sgYXQg
dGhlIEFpcnBvcnQgU3RvcmFnZSBWYXVsdCwgSSBkaXNjb3ZlcmVkIGFuIGFiYW5kb25lZCBzaGlw
bWVudCBmcm9tIGEgRGlwbG9tYXQgZnJvbSBMb25kb24gYW5kIHdoZW4gc2Nhbm5lZCBpdCByZXZl
YWxlZCBhbiB1bmRpc2Nsb3NlZCBzdW0gb2YgbW9uZXkgaW4gYSBtZXRhbCB0cnVuayBib3guVGhl
IGNvbnNpZ25tZW50IHdhcyBhYmFuZG9uZWQgYmVjYXVzZSB0aGUgQ29udGVudHMgb2YgdGhlIGNv
bnNpZ25tZW50IHdhcyBub3QgcHJvcGVybHkgZGVjbGFyZWQgYnkgdGhlIGNvbnNpZ25lZSBhc+KA
nE1PTkVZ4oCdIHJhdGhlciBpdCB3YXMgZGVjbGFyZWQgYXMgcGVyc29uYWwgZWZmZWN0IHRvIGF2
b2lkIGludGVycm9nYXRpb24gYW5kIGFsc28gdGhlIGluYWJpbGl0eSBvZiB0aGUgZGlwbG9tYXQg
dG8gcGF5IGZvciB0aGUgVW5pdGVkIFN0YXRlcyBOb24gSW5zcGVjdGlvbiBDaGFyZ2VzIHdoaWNo
IGlzICQzLDcwMFVTRC4gT24gbXkgYXNzdW1wdGlvbiB0aGUgY29uc2lnbm1lbnQgaXMgc3RpbGwg
bGVmdCBpbiBvdXIgU3RvcmFnZSBIb3VzZSBoZXJlIGF0IHRoZSBMb3MgQW5nZWxlcyBJbnRlcm5h
dGlvbmFsIEFpcnBvcnQsIFtMQVhdIHRpbGwgZGF0ZS4KClRoZSBkZXRhaWxzIG9mIHRoZSBjb25z
aWdubWVudCBpbmNsdWRpbmcgeW91ciBuYW1lLCB5b3VyIGVtYWlsIGFkZHJlc3MgaW4gYW5kIHRo
ZSBvZmZpY2lhbCBkb2N1bWVudHMgZnJvbSB0aGUgVW5pdGVkIE5hdGlvbnMgb2ZmaWNlIGluIEdl
bmV2YSBhcmUgdGFnZ2VkIG9uIHRoZSBUcnVuayBib3guCmJlbG93IGRldGFpbHMgYXJlIG1lYW50
IHJlcXVpcmVtZW50LAoKTkFNRSwKQURSRVNTLApDRUxMLApORUFSRVNUIEFJUlBPUlQsCktJTkRM
WSBSRVBMWSBUTyBCRUxPVyBFTUFJTCwoa2Fsc3Ryb21qYW1lczAxQGdtYWlsLmNvbSkKCk9uY2Ug
SSBjb25maXJtIHlvdSBhcyB0aGUgYWN0dWFsIHJlY2lwaWVudCBvZiB0aGUgdHJ1bmsgYm94LCBJ
IHdpbGwgZ2V0IGV2ZXJ5dGhpbmcgY29uY2x1ZGVkIHdpdGhpbiA0OGhvdXJzIHVwb24geW91ciBh
Y2NlcHRhbmNlIGFuZCBwcm9jZWVkIHRvIHlvdXIgYWRkcmVzcyBmb3IgZGVsaXZlcnkuIExhc3Rs
eSwgYmUgaW5mb3JtZWQgdGhhdCB0aGUgcmVhc29uIEkgaGF2ZSB0YWtlbiBpdCB1cG9uIG15c2Vs
ZiB0byBjb250YWN0IHlvdSBwZXJzb25hbGx5IGFib3V0IHRoaXMgYWJhbmRvbmVkIGNvbnNpZ25t
ZW50IGlzIGJlY2F1c2UgSSB3YW50IHVzIHRvIHRyYW5zYWN0IHRoaXMgYnVzaW5lc3MgYW5kIHNo
YXJlIHRoZSBtb25leSA4MHBlcmNlbnQgZm9yIHlvdSBhbmQgMjAgcGVyY2VudCBmb3IgbWUgc2lu
Y2UgdGhlIGNvbnNpZ25tZW50IGhhcyBub3QgeWV0IGJlZW4gcmV0dXJuZWQgdG8gdGhlIFVuaXRl
ZCBTdGF0ZXMgVHJlYXN1cnkgRGVwYXJ0bWVudCBhZnRlciBiZWluZyBhYmFuZG9uZWQgYnkgdGhl
IGRpcGxvbWF0IHNvIGltbWVkaWF0ZWx5IHRoZSBjb25maXJtYXRpb24gaXMgbWFkZSwgSSB3aWxs
IGdvIGFoZWFkIGFuZCBwYXkgZm9yIHRoZSBVbml0ZWQgU3RhdGVzIE5vbiBJbnNwZWN0aW9uIEZl
ZSAKJDEsNzAwIGFuZCBhcnJhbmdlIGZvciB0aGUgYm94IHRvIGJlIGRlbGl2ZXJlZCB0byB5b3Vy
IGRvb3JzdGVwLgoKCgpOT1RFOiBJZiB5b3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGluIHlvdXIg
U1BBTS9KVU5LIGZvbGRlciwgdGhhdCBpcyBiZWNhdXNlIG9mIHRoZSByZXN0cmljdGlvbnMgaW1w
bGVtZW50ZWQgYnkgeW91ciBJbnRlcm5ldCBTZXJ2aWNlIFByb3ZpZGVyLCB0cmVhdCBpdCBnZW51
aW5lbHkuCgoKCk1yLiBLYWxzdHJvbSBTLiBKYW1lcywKQ2hpZWYgSW1taWdyYXRpb24gb2ZmaWNl
ci4KTG9zIEFuZ2VsZXMgSW50ZXJuYXRpb25hbCBBaXJwb3J0LgozNDM1IFdpbHNoaXJlIEJsdmQu
LCBTdWl0ZSAxMDI1CkxvcyBBbmdlbGVzLCBDQSA5MDAxMAoKCiAKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
