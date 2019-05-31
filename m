Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B3A30E5B
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2019 14:48:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 996BB882D3;
	Fri, 31 May 2019 12:48:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tLCOAUKsVzsz; Fri, 31 May 2019 12:48:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81211881DE;
	Fri, 31 May 2019 12:48:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 745E51BF23C
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 12:48:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6334285E7C
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 12:48:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JfDM3y78Wmsc for <devel@linuxdriverproject.org>;
 Fri, 31 May 2019 12:47:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DBF8685DF5
 for <devel@driverdev.osuosl.org>; Fri, 31 May 2019 12:47:58 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id h2so769659pgg.1
 for <devel@driverdev.osuosl.org>; Fri, 31 May 2019 05:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=mrOvROKkD6rEtKj8wt1DbcS2uRCJ3D/8JqzJE6LAZsI=;
 b=Tz/bmVgg+/llAxfI4JKND90fWUcOivF2HhnGibjeZarDNFSasZgVY8nSO1NWp/QGVq
 Cv1dYM51wKg++UR1jbh1/EuEKhV8SBL32Wz30rcr0vHi765piUJLR6zAWCwJJnVOGQ1n
 n0pHVSNjw3OWjwdMaBeetNsjmwe85cMWRirG5NiAX3sGPmqfRzHvZwbzOyHrqmF6RQsm
 JsXDmAawjHvHTUHJw0QWneRhH5U6ioVjGTWDbYdP267LS993J4hEj+RZNPNltTIM4aTG
 5ZeOTrSNGFQBXQCBEhW+hjDpboaU321kcz1hgNUtTzXjRr07HEG8zW/YdwQolBi6O8aU
 Tcbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mrOvROKkD6rEtKj8wt1DbcS2uRCJ3D/8JqzJE6LAZsI=;
 b=M8qIPgFBvA0GiZ1PW2scF6J0rwD2pN850SpX7zMGK6g0s9SA9bbN08jz3iAyD+ciS4
 nhRxMnD48TUE6MTW5dLkAnUSjxTtuGLCiPu9UZO63jN5ROh8syhhVbb0CTzCg6cApA7n
 HVJCCx7M6UMxBjM5GL61Fwoj97eKk7QTKvrFDD0GwcmjuEo49hEyn5FWl/vwS1OfbS8r
 RuEmKposu/XmjX9iBps6yIY7ZgwwwyAWBXGS4mMGTnzPphTshkF8XoyIynDEKM14kOqI
 seZNfxOLidGMzCxlboNpuiq4Scq9u4IjcPwH9JkZG67izy6upnAIL51d24aLzwr0Iv4Y
 R7nQ==
X-Gm-Message-State: APjAAAUm66S1h3iUPWoJkgK6hcY4JIIkF80VxgzbtYMuRHPbVARQPLBF
 Joslyrkf0bJlMBNrCqGZA4Y=
X-Google-Smtp-Source: APXvYqzB6F7GVc2P/vdc99tPiND53CNErHrnx/6SB9dA9xIarGsroG8GHVpNUdhbPwiRTCuWtmIlSA==
X-Received: by 2002:a17:90a:5d15:: with SMTP id
 s21mr8923444pji.125.1559306878540; 
 Fri, 31 May 2019 05:47:58 -0700 (PDT)
Received: from [10.0.2.15] ([157.40.69.0])
 by smtp.gmail.com with ESMTPSA id q7sm10413838pjb.0.2019.05.31.05.47.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 05:47:57 -0700 (PDT)
Subject: Re: [PATCH] staging: comedi: Remove variable runflags
To: Ian Abbott <abbotti@mev.co.uk>, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, olsonse@umich.edu, jkhasdev@gmail.com,
 giulio.benetti@micronovasrl.com, nishadkamdar@gmail.com,
 kas.sandesh@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20190530205131.29955-1-nishkadg.linux@gmail.com>
 <8292224d-9c4a-d29e-4a86-d3352fcd2be1@mev.co.uk>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <ceb54997-3057-81df-f3f0-e04b36e950c4@gmail.com>
Date: Fri, 31 May 2019 18:17:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <8292224d-9c4a-d29e-4a86-d3352fcd2be1@mev.co.uk>
Content-Language: en-US
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMzEvMDUvMTkgMzo1NSBQTSwgSWFuIEFiYm90dCB3cm90ZToKPiBPbiAzMC8wNS8yMDE5IDIx
OjUxLCBOaXNoa2EgRGFzZ3VwdGEgd3JvdGU6Cj4+IFJlbW92ZSB2YXJpYWJsZSBydW5mbGFncyBh
bmQgdXNlIGl0cyB2YWx1ZSBkaXJlY3RseS4gSXNzdWUgZm91bmQgd2l0aAo+PiBjaGVja3BhdGNo
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBOaXNoa2EgRGFzZ3VwdGEgPG5pc2hrYWRnLmxpbnV4QGdt
YWlsLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvc3RhZ2luZy9jb21lZGkvY29tZWRpX2ZvcHMu
YyB8IDggKystLS0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNiBk
ZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9jb21lZGkvY29t
ZWRpX2ZvcHMuYyAKPj4gYi9kcml2ZXJzL3N0YWdpbmcvY29tZWRpL2NvbWVkaV9mb3BzLmMKPj4g
aW5kZXggZjZkMTI4N2M3YjgzLi5iODRlZTkyOTM5MDMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
c3RhZ2luZy9jb21lZGkvY29tZWRpX2ZvcHMuYwo+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvY29t
ZWRpL2NvbWVkaV9mb3BzLmMKPj4gQEAgLTY3NiwxNiArNjc2LDEyIEBAIEVYUE9SVF9TWU1CT0xf
R1BMKGNvbWVkaV9pc19zdWJkZXZpY2VfcnVubmluZyk7Cj4+IMKgIHN0YXRpYyBib29sIF9fY29t
ZWRpX2lzX3N1YmRldmljZV9ydW5uaW5nKHN0cnVjdCBjb21lZGlfc3ViZGV2aWNlICpzKQo+PiDC
oCB7Cj4+IC3CoMKgwqAgdW5zaWduZWQgaW50IHJ1bmZsYWdzID0gX19jb21lZGlfZ2V0X3N1YmRl
dmljZV9ydW5mbGFncyhzKTsKPj4gLQo+PiAtwqDCoMKgIHJldHVybiBjb21lZGlfaXNfcnVuZmxh
Z3NfcnVubmluZyhydW5mbGFncyk7Cj4+ICvCoMKgwqAgcmV0dXJuIAo+PiBjb21lZGlfaXNfcnVu
ZmxhZ3NfcnVubmluZyhfX2NvbWVkaV9nZXRfc3ViZGV2aWNlX3J1bmZsYWdzKHMpKTsKPj4gwqAg
fQo+PiDCoCBib29sIGNvbWVkaV9jYW5fYXV0b19mcmVlX3Nwcml2KHN0cnVjdCBjb21lZGlfc3Vi
ZGV2aWNlICpzKQo+PiDCoCB7Cj4+IC3CoMKgwqAgdW5zaWduZWQgaW50IHJ1bmZsYWdzID0gX19j
b21lZGlfZ2V0X3N1YmRldmljZV9ydW5mbGFncyhzKTsKPj4gLQo+PiAtwqDCoMKgIHJldHVybiBy
dW5mbGFncyAmIENPTUVESV9TUkZfRlJFRV9TUFJJVjsKPj4gK8KgwqDCoCByZXR1cm4gX19jb21l
ZGlfZ2V0X3N1YmRldmljZV9ydW5mbGFncyhzKSAmIENPTUVESV9TUkZfRlJFRV9TUFJJVjsKPj4g
wqAgfQo+PiDCoCAvKioKPj4KPiAKPiBJIGNvdWxkbid0IHJlcHJvZHVjZSB0aGlzIGNoZWNrcGF0
Y2ggaXNzdWUsIGV2ZW4gd2l0aCAnLS1zdWJqZWN0aXZlJy4KCkknbSBzb3JyeSwgdGhhdCB3YXMg
ZXh0cmVtZWx5IGNhcmVsZXNzIG9mIG1lLiBJIHVzZWQgQ29jY2luZWxsZSB0byBmaW5kIAp0aGlz
LCBub3QgQ2hlY2twYXRjaC4KSGVyZSBpcyB0aGUgQ29jY2luZWxsZSBzY3JpcHQgSSB1c2VkOgoK
QEBpZGVudGlmaWVyIGkxLCBpMiwgZjEsIGYyOyB0eXBlIFQ7IGV4cHJlc3Npb24gZTEsIGUyOyBz
dGF0ZW1lbnQgUzEsIFMyO0BACigKLSBUIGkxID0gZjEoLi4uKTsKfAotIFQgaTEgPSBlMTsKKQou
Li4gd2hlbiAhPSBlMiA9IDwrLi4uaTEuLi4rPgogICAgIHdoZW4gIT0gaWYgKDwrLi4uaTEuLi4r
PikgUzEgZWxzZSBTMgogICAgIHdoZW4gIT0gZjIoLi4uLDwrLi4uaTEuLi4rPiwuLi4pCiAgICAg
d2hlbiAhPSBpMS0+aTIKICAgICB3aGVuICE9IGkyWzwrLi4uaTEuLi4rPl0KICAgICB3aGVuICE9
IHdoaWxlKDwrLi4uaTEuLi4rPikgUzEKICAgICB3aGVuICE9IGZvciguLi47PCsuLi5pMS4uLis+
Oy4uLikgUzEKCkFnYWluLCBJJ20gc29ycnkgZm9yIHRoZSBjb25mdXNpb247IEkgZG9uJ3Qga25v
dyB3aHkgaXQgaGFwcGVuZWQsIGJ1dCBpdCAKd29uJ3QgaGFwcGVuIGFnYWluLgoKTmlzaGthCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
