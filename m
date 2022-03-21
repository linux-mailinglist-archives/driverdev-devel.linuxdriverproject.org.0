Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C90DE4E2B4F
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Mar 2022 15:56:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50AA7409F4;
	Mon, 21 Mar 2022 14:56:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sQZaCVRjqRdQ; Mon, 21 Mar 2022 14:56:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB6C2409F9;
	Mon, 21 Mar 2022 14:56:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38D0D1BF324
 for <devel@linuxdriverproject.org>; Mon, 21 Mar 2022 14:56:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2EFBB831D6
 for <devel@linuxdriverproject.org>; Mon, 21 Mar 2022 14:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id riaO_xIdTUiW for <devel@linuxdriverproject.org>;
 Mon, 21 Mar 2022 14:56:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 790DD83134
 for <devel@driverdev.osuosl.org>; Mon, 21 Mar 2022 14:56:17 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id pv16so30473079ejb.0
 for <devel@driverdev.osuosl.org>; Mon, 21 Mar 2022 07:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=EZ1M2voOdYcsA7RK2FHxgjFOF+9ixl/KNGH886OL0HM=;
 b=SwgcMqlqTy73hmBpRZafwG4TiG14UZfbrN5CcYfNyN81JhOHyV9Am3AYjeMUxDgsUz
 jAE2nvHjVAhUAJkO2ycrepAGSmE8FwP9OcMzzjd9J69hrRfY8y21GNyxY+Fc5wLKaC2B
 shcHdEkBFxVCrRr2UGZnM+FexnmKNtcv99F1ZrOyI4onjhx7L/Gjdl7FGc9Pm4Dnk4Z4
 ncwrNjhsxXLKWXGjyaHEfm5F843LEWYi+vnvyXAxcAVS6I+Vh9xT/2YbI5ok65x6/dsd
 R4CWXAH+VOQkASlyWDmcbXBzQHfobI9ohw5OZHWo6GsIEzTdbhriUFN4yqCH16wvW5O2
 DbHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=EZ1M2voOdYcsA7RK2FHxgjFOF+9ixl/KNGH886OL0HM=;
 b=Tl/FHcq6+W92qmWa6ixMdapmloTFOrCUj6ZF6T8v26RdblRgdoLbjN+zpbYSAM4SAL
 V51hbB/TSE2be7Yyz31HQBEywWfYcZt/PJ2rTFEuHI24Dht8SjCI1kwh/4Cofz0Ic9Sl
 mX5QaOFtnQtPZAXe3fc5NHFOvQNOFjZ2Ty3MTphPHHSCZFnRhlc1iasubPReJW8omrqL
 PVUgPnGo7du6l67uPl8diq/TeS/lBUCVJLO0iIQjn01Mw/mr0uW4YyW0C+bbEIBpUSAa
 ZxS4W5VWp7IoEs4iXVuxZsT3z53Q+Xacbf3Rjzg2fi+148mxA8vC8aMUmfEqqH3s9GO0
 Eliw==
X-Gm-Message-State: AOAM531r6VtY4MWILk1E+v/L5+j2O7RPsquVo9Gb3eGtOdf2dRL8+i76
 QLGnk89GN9FZW/7ohS0k4sqAM20REwa1D+rPftA=
X-Google-Smtp-Source: ABdhPJxTdLz8O87W74XCYu0jhfCEBk0W5SGakh24kZCayygBPxJtksl5MLfAYaxhjHVds/5oVKVfaNdGdJQJ5u+fNP0=
X-Received: by 2002:a17:907:6286:b0:6da:6e24:5e43 with SMTP id
 nd6-20020a170907628600b006da6e245e43mr21287215ejc.449.1647874575520; Mon, 21
 Mar 2022 07:56:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:3a41:0:0:0:0:0 with HTTP; Mon, 21 Mar 2022 07:56:14
 -0700 (PDT)
From: Jackie James <jackiejames614@gmail.com>
Date: Tue, 22 Mar 2022 02:56:14 +1200
X-Google-Sender-Auth: 2o59My0vF6BzLX3KBH6GukyqSWA
Message-ID: <CAMzF8FnZesNeLMLKB7AuDHS8mSfoWyeRmwmZzN=bu=b2g8wtbQ@mail.gmail.com>
Subject: Gooday my beloved
To: undisclosed-recipients:;
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

R3JlZXRoaW5nIG15IGRlYXIsCgogIEkgc2VudCB0aGlzIG1haWwgcHJheWluZyBpdCB3aWxsIGdl
dCB0byB5b3UgaW4gYSBnb29kIGNvbmRpdGlvbiBvZgpoZWFsdGgsIHNpbmNlIEkgbXlzZWxmIGFy
ZSBpbiBhIHZlcnkgY3JpdGljYWwgaGVhbHRoIGNvbmRpdGlvbiBpbgp3aGljaCBJIHNsZWVwIGV2
ZXJ5IG5pZ2h0IHdpdGhvdXQga25vd2luZyBpZiBJIG1heSBiZSBhbGl2ZSB0byBzZWUgdGhlCm5l
eHQgZGF5LiBJIGJyaW5nIHBlYWNlIGFuZCBsb3ZlIHRvIHlvdS4gSXQgaXMgYnkgdGhlIGdyYWNl
IG9mIEdvZCwgSQpoYWQgbm8gY2hvaWNlIHRoYW4gdG8gZG8gd2hhdCBpcyBsYXdmdWwgYW5kIHJp
Z2h0IGluIHRoZSBzaWdodCBvZiBHb2QKZm9yIGV0ZXJuYWwgbGlmZSBhbmQgaW4gdGhlIHNpZ2h0
IG9mIG1hbiwgZm9yIHdpdG5lc3Mgb2YgR29k4oCZcyBtZXJjeQphbmQgZ2xvcnkgdXBvbiBteSBs
aWZlLEkgYW0gTXJzLkphY2tpZSxKYW1lcyxhIHdpZG93LEkgYW0gc3VmZmVyaW5nCmZyb20gYSBs
b25nIHRpbWUgYnJhaW4gdHVtb3IsIEl0IGhhcyBkZWZpbGVkIGFsbCBmb3JtcyBvZiBtZWRpY2Fs
CnRyZWF0bWVudCwgYW5kIHJpZ2h0IG5vdyBJIGhhdmUgYWJvdXQgYSBmZXcgbW9udGhzIHRvIGxl
YXZlLCBhY2NvcmRpbmcKdG8gbWVkaWNhbCBleHBlcnRzLgoKICAgVGhlIHNpdHVhdGlvbiBoYXMg
Z290dGVuIGNvbXBsaWNhdGVkIHJlY2VudGx5IHdpdGggbXkgaW5hYmlsaXR5IHRvCmhlYXIgcHJv
cGVyLCBhbSBjb21tdW5pY2F0aW5nIHdpdGggeW91IHdpdGggdGhlIGhlbHAgb2YgdGhlIGNoaWVm
Cm51cnNlIGhlcmVpbiB0aGUgaG9zcGl0YWwsIGZyb20gYWxsIGluZGljYXRpb24gbXkgY29uZGl0
aW9ucyBpcyByZWFsbHkKZGV0ZXJpb3JhdGluZyBhbmQgaXQgaXMgcXVpdGUgb2J2aW91cyB0aGF0
LCBhY2NvcmRpbmcgdG8gbXkgZG9jdG9ycwp0aGV5IGhhdmUgYWR2aXNlZCBtZSB0aGF0IEkgbWF5
IG5vdCBsaXZlIHRvbyBsb25nLCBCZWNhdXNlIHRoaXMKaWxsbmVzcyBoYXMgZ290dGVuIHRvIGEg
dmVyeSBiYWQgc3RhZ2UuIEkgcGxlYWQgdGhhdCB5b3Ugd2lsbCBub3QKZXhwb3NlIG9yIGJldHJh
eSB0aGlzIHRydXN0IGFuZCBjb25maWRlbmNlIHRoYXQgSSBhbSBhYm91dCB0byByZXBvc2UKb24g
eW91IGZvciB0aGUgbXV0dWFsIGJlbmVmaXQgb2YgdGhlIG9ycGhhbnMgYW5kIHRoZSBsZXNzIHBy
aXZpbGVnZS4gSQpoYXZlIHNvbWUgZnVuZHMgSSBpbmhlcml0ZWQgZnJvbSBteSBsYXRlIGh1c2Jh
bmQsIHRoZSBzdW0gb2YgKCQKMTIsNTAwLDAwMC4wMCBEb2xsYXJzKS5IYXZpbmcga25vd24gbXkg
Y29uZGl0aW9uLCBJIGRlY2lkZWQgdG8gZG9uYXRlCnRoaXMgZnVuZCB0byB5b3UgYmVsaWV2aW5n
IHRoYXQgeW91IHdpbGwgdXRpbGl6ZSBpdCB0aGUgd2F5IGkgYW0gZ29pbmcKdG8gaW5zdHJ1Y3Qg
aGVyZWluLgoKICAgSSBuZWVkIHlvdSB0byBhc3Npc3QgbWUgYW5kIHJlY2xhaW0gdGhpcyBtb25l
eSBhbmQgdXNlIGl0IGZvcgpDaGFyaXR5IHdvcmtzLCBmb3Igb3JwaGFuYWdlcyBhbmQgZ2l2ZXMg
anVzdGljZSBhbmQgaGVscCB0byB0aGUgcG9vciwKbmVlZHkgYW5kIHdpZG93cyBzYXlzIFRoZSBM
b3JkLiIgSmVyZW1pYWggMjI6MTUtMTYu4oCcIGFuZCBhbHNvIGJ1aWxkCnNjaG9vbHMgZm9yIGxl
c3MgcHJpdmlsZWdlIHRoYXQgd2lsbCBiZSBuYW1lZCBhZnRlciBteSBsYXRlIGh1c2JhbmQgaWYK
cG9zc2libGUgYW5kIHRvIHByb21vdGUgdGhlIHdvcmQgb2YgR29kIGFuZCB0aGUgZWZmb3J0IHRo
YXQgdGhlIGhvdXNlCm9mIEdvZCBpcyBtYWludGFpbmVkLiBJIGRvIG5vdCB3YW50IGEgc2l0dWF0
aW9uIHdoZXJlIHRoaXMgbW9uZXkgd2lsbApiZSB1c2VkIGluIGFuIHVuZ29kbHkgbWFubmVyLiBU
aGF0J3Mgd2h5IEknbSB0YWtpbmcgdGhpcyBkZWNpc2lvbi4gSSdtCm5vdCBhZnJhaWQgb2YgZGVh
dGgsIHNvIEkga25vdyB3aGVyZSBJJ20gZ29pbmcuIEkgYWNjZXB0IHRoaXMgZGVjaXNpb24KYmVj
YXVzZSBJIGRvIG5vdCBoYXZlIGFueSBjaGlsZCB3aG8gd2lsbCBpbmhlcml0IHRoaXMgbW9uZXkg
YWZ0ZXIgSQpkaWUuIFBsZWFzZSBJIHdhbnQgeW91ciBzaW5jZXJlbHkgYW5kIHVyZ2VudCBhbnN3
ZXIgdG8ga25vdyBpZiB5b3UKd2lsbCBiZSBhYmxlIHRvIGV4ZWN1dGUgdGhpcyBwcm9qZWN0IGZv
ciB0aGUgZ2xvcnkgb2YgR29kLCBhbmQgSSB3aWxsCmdpdmUgeW91IG1vcmUgaW5mb3JtYXRpb24g
b24gaG93IHRoZSBmdW5kIHdpbGwgYmUgdHJhbnNmZXJyZWQgdG8geW91cgpiYW5rIGFjY291bnQu
IE1heSB0aGUgZ3JhY2UsIHBlYWNlLCBsb3ZlIGFuZCB0aGUgdHJ1dGggaW4gdGhlIFdvcmQgb2YK
R29kIGJlIHdpdGggeW91IGFuZCBhbGwgdGhvc2UgdGhhdCB5b3UgbG92ZSBhbmQgY2FyZSBmb3Iu
CkknbSB3YWl0aW5nIGZvciB5b3VyIGltbWVkaWF0ZSByZXBseSwKUmVnYXJkcy4KTXJzLEphY2tp
ZSxKYW1lcywsCldyaXR0aW5nIEZyb20gdGhlIGhvc3BpdGFsLApNYXkgR29kIEJsZXNzIHlvdSwK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
