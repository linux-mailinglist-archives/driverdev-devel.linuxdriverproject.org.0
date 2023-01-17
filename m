Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7916A66DC8F
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Jan 2023 12:35:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08B598144E;
	Tue, 17 Jan 2023 11:35:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08B598144E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2_c5VLI_biv0; Tue, 17 Jan 2023 11:35:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE6F581430;
	Tue, 17 Jan 2023 11:35:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE6F581430
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B28E01BF375
 for <devel@linuxdriverproject.org>; Tue, 17 Jan 2023 11:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8D5EE60784
 for <devel@linuxdriverproject.org>; Tue, 17 Jan 2023 11:35:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D5EE60784
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zKdj8-JlvowB for <devel@linuxdriverproject.org>;
 Tue, 17 Jan 2023 11:35:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EEEB605E9
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3EEEB605E9
 for <devel@driverdev.osuosl.org>; Tue, 17 Jan 2023 11:35:22 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id az20so55548713ejc.1
 for <devel@driverdev.osuosl.org>; Tue, 17 Jan 2023 03:35:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=yVA+bfTpjRSsvbVzKLVIX2vGQnpB6+SAaeup5CYFzU4=;
 b=pnka0oeFPfGmQY7FWbon8GnGKpuUnV5pQt7eftM2rIMy4zQytj7+Dx3bcSiQPHWA5A
 2z8KsPmeTi3WE3yrW5OlKfkcCIrnGG0k6rW8BpMwdofZQyC6s1OZiCi6u5qkCeNZMbtg
 PDeGn2ylH04dwM2IV+AuFsRen7ZR9QauyNxW/NUWuZbjwtJMAkqDPiiUDnQB5OdliSrR
 zIzAuPlzOsYzkZQ/T5Uyv3otFi+SkrxwPNlXllm2WulzZBb/Q/Q1v3A9UYlbHuxCDTpC
 X3f0fi4ayoygrCVLNuyEG9nzkrwh5ZOkXwmPf8htWghmxOebUVEaJOMK7hfh82JdmxbQ
 YSpQ==
X-Gm-Message-State: AFqh2kpdiAPxtPDOHQdCLJve6TKZHh7ZeJfCDif/thHxic7BXQQYWKJb
 c2GnBrzhLMKXq7Zx80ipx9yX7U2anEHzGL6ZxFU=
X-Google-Smtp-Source: AMrXdXutRwJl9ihTekNW3KjyW4N/lFw/XatGSMSg8jMUuJH5f+AQS9ds48d/EfpWiTNAJZlsnuWJAngTLzRPFPcopMc=
X-Received: by 2002:a17:906:7f05:b0:872:6e74:7471 with SMTP id
 d5-20020a1709067f0500b008726e747471mr155725ejr.611.1673955320212; Tue, 17 Jan
 2023 03:35:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a50:770f:0:b0:1ed:ac01:df73 with HTTP; Tue, 17 Jan 2023
 03:35:19 -0800 (PST)
From: "Mrs. Elizabeth" <thomasgabreil25@gmail.com>
Date: Tue, 17 Jan 2023 03:35:19 -0800
Message-ID: <CAOUWu0u90DN-UzGRSQRnkDGhsmGuxCacY27pMgxaNcHSRhxMUQ@mail.gmail.com>
Subject: Mrs. Elizabeth Edward.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=yVA+bfTpjRSsvbVzKLVIX2vGQnpB6+SAaeup5CYFzU4=;
 b=RKBVq1vZTCIF9LTmuDNZ0I863iFhbu1lfOSsIBUI/lX4BHXKUwIAoYuyonJ33JVS+t
 ldcFansfXHxcDjwYd2AL69wPKN8+12K/KmVTx0hH3KEbfCs3tX45Nj20Lw7RulqoWV5+
 SDA5uRJso1+n4M4/msTRexs3td9T5VO6wUWu/IvBzrEOqloMxSrjFdSEhifozMrPOMrz
 XKuWDYTaKZLla++dsAO1ltXWI+N+4eCBn/Y6V6pdGsQtpHlFApbN1q4JtiP/dpbxQ6IM
 J28MiWp76kstmdvI3ciiEUXOGq6Mv04XrJepHTO3FcWKhuz3Mj2lBJjOqr6CnCggVk+A
 oIQg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=RKBVq1vZ
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
Reply-To: mrselizabethedward46@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TXkgRGVhciBGcmllbmQsCgpQbGVhc2UgZm9yZ2l2ZSBtZSBmb3Igc3RyZXNzaW5nIHlvdSB3aXRo
IG15IHByZWRpY2FtZW50cyBhbmQgYW0gc29ycnkKdG8gYXBwcm9hY2ggeW91IHRocm91Z2ggdGhp
cyBtZWRpYSwgaXQgaXMgYmVjYXVzZSBpdCBzZXJ2ZXMgdGhlCmZhc3Rlc3QgbWVhbnMgb2YgY29t
bXVuaWNhdGlvbi4gSSBjYW1lIGFjcm9zcyB5b3VyIEUtbWFpbCBmcm9tIG15CnBlcnNvbmFsIHNl
YXJjaCBhbmQgSSBkZWNpZGVkIHRvIGNvbnRhY3QgeW91IGJlbGlldmluZyB5b3Ugd2lsbCBiZQpo
b25lc3QgdG8gZnVsZmlsbCBteSBmaW5hbCB3aXNoIGJlZm9yZSBJIGRpZS4KCkkgYW0gTXJzLiBF
bGl6YWJldGggRWR3YXJkLCA2MyB5ZWFycywgZnJvbSBVU0EsIEkgYW0gY2hpbGRsZXNzIGFuZCBJ
CmFtIHN1ZmZlcmluZyBmcm9tIGEgcHJvLWxvbmcgY3JpdGljYWwgY2FuY2VyLCBteSBkb2N0b3Jz
IGNvbmZpcm1lZCBJCm1heSBub3QgbGl2ZSBiZXlvbmQgdHdvIG1vbnRocyBmcm9tIG5vdyBhcyBt
eSBpbGwgaGVhbHRoIGhhcyBkZWZpbGUKYWxsIGZvcm1zIG9mIG1lZGljYWwgdHJlYXRtZW50LgoK
U2luY2UgbXkgZGF5cyBhcmUgbnVtYmVyZWQsIEnigJl2ZSBkZWNpZGVkLCB3aWxsaW5nbHkgdG8g
ZnVsZmlsbCBteQpsb25nLXRpbWUgcHJvbWlzZSB0byBkb25hdGUgeW91IHRoZSBzdW0gKCQ1LjAw
MC4wMDAuMDApIG1pbGxpb24KZG9sbGFycyBJIG5oZXJpdGVkIGZyb20gbXkgbGF0ZSBodXNiYW5k
IE1yLiBFZHdhcmQgSGVyYmFydCwgZm9yZWlnbgpiYW5rIGFjY291bnQgb3ZlciB5ZWFycy4gSSBu
ZWVkIGEgdmVyeSBob25lc3QgcGVyc29uIHdobyBjYW4gYXNzaXN0IGluCnRyYW5zZmVyIG9mIHRo
aXMgbW9uZXkgdG8gaGlzIG9yIGhlciBhY2NvdW50IGFuZCB1c2UgdGhlIGZ1bmRzIGZvcgpjaGFy
aXRpZXMgd29yayBvZiBHb2Qgd2hpbGUgeW91IHVzZSA1MCUgZm9yIHlvdXJzZWxmLiBJIHdhbnQg
eW91IHRvCmtub3cgdGhlcmUgYXJlIG5vIHJpc2tzIGludm9sdmVkOyBpdCBpcyAxMDAlIGhpdGNo
IGZyZWUgJiBzYWZlLiBJZiB5b3UKd2lsbCBiZSBpbnRlcmVzdGluZyB0byBhc3Npc3QgaW4gZ2V0
dGluZyB0aGlzIGZ1bmQgaW50byB5b3VyIGFjY291bnQKZm9yIGNoYXJpdHkgcHJvamVjdCB0byBm
dWxmaWxsIG15IHByb21pc2UgYmVmb3JlIEkgZGllIHBsZWFzZSBsZXQgbWUKa25vdyBpbW1lZGlh
dGVseS4gSSB3aWxsIGFwcHJlY2lhdGUgeW91ciB1dG1vc3QgY29uZmlkZW50aWFsaXR5IGFzIEkK
d2FpdCBmb3IgeW91ciByZXBseS4KCkJlc3QgUmVnYXJkcwoKTXJzLiBFbGl6YWJldGggRWR3YXJk
LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
