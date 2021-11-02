Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D89D3442991
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Nov 2021 09:33:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5029C80CFD;
	Tue,  2 Nov 2021 08:33:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GVsPMKRUm2IJ; Tue,  2 Nov 2021 08:32:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A94E180C3A;
	Tue,  2 Nov 2021 08:32:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA9BA1BF2BA
 for <devel@linuxdriverproject.org>; Tue,  2 Nov 2021 08:32:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A97BB402F3
 for <devel@linuxdriverproject.org>; Tue,  2 Nov 2021 08:32:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yXA6ndCY1__H for <devel@linuxdriverproject.org>;
 Tue,  2 Nov 2021 08:32:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08E8A402F2
 for <devel@driverdev.osuosl.org>; Tue,  2 Nov 2021 08:32:47 +0000 (UTC)
Received: by mail-io1-xd32.google.com with SMTP id d63so24632600iof.4
 for <devel@driverdev.osuosl.org>; Tue, 02 Nov 2021 01:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=KSScdYEf3MK3Esjjdf8v7qJFGLQxrQu3NNbNO7K/AL8=;
 b=EhDe61QOn4l5qiKk8j+P1Of45COJNsLveO6dUmhGmdlQaQuEF1iD3uqOBmxoOi+Tlg
 GBL28NyUSSkJM34R7+DgyidPwZJtSFgrwK0ZysAvvD1vlF3R3r8LO/+C+GttPJqO6kBJ
 ttE4jaJHQADaN0/eNinyMELP9YBdZrPnQlZf1qe4c+DM/dPi0seGmeQ5c+oSxdmsLKNB
 dPjESNQ2uA15iqxs3Sdoi2zur0+j3FxYl3h1wm9Cr6AN3LKXtNuy7O/YfqY6UW6ajaE9
 YBQ9/Dl/HZ5bAUJHIIGy2GKCIlPufr0x16luOmJ+Br3/3K/myVPL6pW+0ls1gYGbpCwT
 7sTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=KSScdYEf3MK3Esjjdf8v7qJFGLQxrQu3NNbNO7K/AL8=;
 b=NgmpnohxAHovR31rXVnRxR7mhKdBRc79HW3uW6DTU1PnWBpqnIglQ0OmTr2Yef3TAH
 gXWpKeb7n++lUKIPf0YzgSe2s9Atp7RbSi5INqree9tjDUVPijKCTwlwmeYQsx0XL3pz
 MJN6A6xAXUJsuxN0tGPtej9xRDXA0DTYB3SVkfhKxIEFRiHavVnQ0GMSOHtn+hbyZQaV
 YuM/dCoEJtnUyArSl5WCwFGtvPhrVnEX1q2OuuVeQTicIXpvuy8NspbEOcKJW2CdRALh
 CKWuwOS3rJEcXv04lZuSGBHmohRQ0xYjlHTPLTdLmPK8FKV2jFRKQko1oYM/f1Gvdy2P
 qgrw==
X-Gm-Message-State: AOAM532FTEecotr707QaSXxF3uGnbnfyChJH2Z8/SWo9pmnJrC/Xh6rC
 YBIQpmjimfHePfCryi3jT1lq5zqJ9fobjKHIhkM=
X-Google-Smtp-Source: ABdhPJzYAE8EqBcnAEf3SLOwEG0IRR8/qJsFLUoZrPkJL8nAchk/RYXbpZwk9ibFrdDRH+M218/kmscumDrnejCBNqI=
X-Received: by 2002:a05:6602:2b89:: with SMTP id
 r9mr24951749iov.32.1635841966698; 
 Tue, 02 Nov 2021 01:32:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a92:8741:0:0:0:0:0 with HTTP;
 Tue, 2 Nov 2021 01:32:45 -0700 (PDT)
From: AISHA GADDAFI <mrzakirhossain458@gmail.com>
Date: Tue, 2 Nov 2021 01:32:45 -0700
Message-ID: <CAE_Gep1nxd0xNmgu_D3ZNJxYnZtZ9rH5xnY8abALnWFUH-xu-A@mail.gmail.com>
Subject: Dearest Friend,?
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
Reply-To: ayishagddafio@mail.ru
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhcmVzdCBGcmllbmQsCgpJbiB0aGUgbmFtZSBvZiBHb2QsIE1vc3QgR3JhY2lvdXMsIE1vc3Qg
TWVyY2lmdWwuCgpQZWFjZSBiZSB1cG9uIHlvdSBhbmQgbWVyY3kgYmUgdXBvbiB5b3UgYW5kIGJs
ZXNzaW5ncyBiZSB1cG9uIHlvdS4KSSBoYXZlIHRoZSBzdW0gb2YgJDI3LjUgbWlsbGlvbiBVU0Qg
Zm9yIGludmVzdG1lbnQsIEkgYW0gaW50ZXJlc3RlZCBpbgp5b3UgZm9yIGludmVzdG1lbnQgcHJv
amVjdCBhc3Npc3RhbmNlIGluIHlvdXIgY291bnRyeS4gTXkgbmFtZSBpcwpBaXNoYSAgR2FkZGFm
aSBhbmQgcHJlc2VudGx5IGxpdmluZyBpbiBPbWFuLCBJIGFtIGEgV2lkb3cgYW5kIHNpbmdsZQpN
b3RoZXIgd2l0aCB0aHJlZSBDaGlsZHJlbiwgdGhlIG9ubHkgYmlvbG9naWNhbCBEYXVnaHRlciBv
ZiBsYXRlCkxpYnlhbiBQcmVzaWRlbnQgKExhdGUgQ29sb25lbCBNdWFtbWFyIEdhZGRhZmkpIGFu
ZCBwcmVzZW50bHkgSSBhbQp1bmRlciBwb2xpdGljYWwgYXN5bHVtIHByb3RlY3Rpb24gYnkgdGhl
IE9tYW5pIEdvdmVybm1lbnQuCgpLaW5kbHkgcmVwbHkgdXJnZW50bHkgZm9yIG1vcmUgZGV0YWls
cy4KCm15IGVtYWlsIGFkZHJlc3MgYmVsb3c6IGF5aXNoYWdkZGFmaW9AbWFpbC5ydQpUaGFua3MK
WW91cnMgVHJ1bHkgQWlzaGEKCgpMaWVic3RlciBGcmV1bmQsCgpJbSBOYW1lbiBHb3R0ZXMsIGRl
cyBnbsOkZGlnc3RlbiwgYmFybWhlcnppZ3N0ZW4uCgpGcmllZGUgc2VpIG1pdCBkaXIgdW5kIEJh
cm1oZXJ6aWdrZWl0IHNlaSBtaXQgZGlyIHVuZCBTZWdlbiBzZWkgbWl0IGRpci4KSWNoIGhhYmUg
ZGllIFN1bW1lIHZvbiAyNyw1IE1pbGxpb25lbiBVU0QgZsO8ciBJbnZlc3RpdGlvbmVuLCBpY2gK
aW50ZXJlc3NpZXJlIG1pY2ggZsO8ciBTaWUgZsO8ciBkaWUgVW50ZXJzdMO8dHp1bmcgdm9uCklu
dmVzdGl0aW9uc3Byb2pla3RlbiBpbiBJaHJlbSBMYW5kLiBNZWluIE5hbWUgaXN0IEFpc2hhIEdh
ZGRhZmkgdW5kCmxlYmUgZGVyemVpdCBpbSBPbWFuLCBpY2ggYmluIGVpbmUgV2l0d2UgdW5kIGFs
bGVpbmVyemllaGVuZGUgTXV0dGVyCm1pdCBkcmVpIEtpbmRlcm4sIGRpZSBlaW56aWdlIGxlaWJs
aWNoZSBUb2NodGVyIGRlcyB2ZXJzdG9yYmVuZW4KbGlieXNjaGVuIFByw6RzaWRlbnRlbiAoZGVt
IHZlcnN0b3JiZW5lbiBPYmVyc3QgTXVhbW1hciBHYWRkYWZpKSB1bmQKc3RlaGUgZGVyemVpdCB1
bnRlciBwb2xpdGlzY2hlbSBBc3lsc2NodXR6IGRlciBvbWFuaXNjaGVuIFJlZ2llcnVuZy4KCkJp
dHRlIGFudHdvcnRlbiBTaWUgZHJpbmdlbmQgZsO8ciB3ZWl0ZXJlIERldGFpbHMuCgptZWluZSBF
LU1haWwtQWRyZXNzZSB1bnRlbjogYXlpc2hhZ2RkYWZpb0BtYWlsLnJ1ClZpZWxlbiBEYW5rCk1p
dCBmcmV1bmRsaWNoZW4gR3LDvMOfZW4gQWlzaGEKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
