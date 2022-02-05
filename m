Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D23E4AAC8C
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Feb 2022 21:43:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E8F9F4017A;
	Sat,  5 Feb 2022 20:43:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fxR2AxrhoAHI; Sat,  5 Feb 2022 20:43:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8002A40550;
	Sat,  5 Feb 2022 20:43:15 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A1CA1BF359
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  5 Feb 2022 20:43:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 84AA540550
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  5 Feb 2022 20:43:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id reBAz35BIkwn
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  5 Feb 2022 20:43:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vk1-xa29.google.com (mail-vk1-xa29.google.com
 [IPv6:2607:f8b0:4864:20::a29])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF3544017A
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  5 Feb 2022 20:43:11 +0000 (UTC)
Received: by mail-vk1-xa29.google.com with SMTP id 48so5780864vki.0
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 05 Feb 2022 12:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=UbFv4nv+QVAdtjvi7O8iXvj0cuzj68CSDExBVSlrmPM=;
 b=FpyKa0y8mORyRer0oGghqDVw0VViu29zYL3K3C+cwHwR72tb6URpqYjEZa2I+3bMS6
 NwRzCEWvOVTf41ME3rHJfhzuw8B9QUExtHlKQWfT/u92GdG+9/l6NKLQtalWZkBUZGhb
 8MSZG22NhqDO3wtaAM5gbTji41b5I9imACgnz+mOMu8jPcX13c9/7E6aZ67XUqX+4W7O
 b0uRTPOUeB5bhv9+plOZWLe3s0rbOrmwu9BSewCr9nJXr54PiKzCXyfgSNKGFKMFnkgd
 pWG1ThPynEQdl7rCthjp6hClQfzr4cyFCPHgWuhvUhM/j0Dr+JBwWFHPLKcDSDz4+ruA
 SFbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=UbFv4nv+QVAdtjvi7O8iXvj0cuzj68CSDExBVSlrmPM=;
 b=Wz09BO0oW7csdph/o+ugEAjk4q5qrOHV4L+/oJci8PUO4LMHI17ahihgyolZruPvZp
 Ccsiax3RClwZ8njaROPj6OjAI3z95J5wXHwWWb73Za0Hw4KdyFbsX0A4EwWu7TZ4hh+K
 GLFzEmRncQaQDASCogDGO7L1LA1lJZ0ZbeQ1aoeLVz6QRXSHg4bkxI+txwLUmFIrr88O
 hLRpC+v9ODuzIU7+UkAG2R2MJrcYKg+SnfyHLWLLN/Go8UFFpNikLjLNolkQFtXJGWu4
 mCVFewHyf9ncIwlO2qSn8j8mbk3QzBrz4r+bJMTxA95JHVigfzcJVHIwMV5woLogpiQc
 gMeg==
X-Gm-Message-State: AOAM530CLsILWPGr5Fd+mNA/HP55Pc3ePjD/I9O10uOMm8k/dvF1/2Gp
 lZlfrZIF4UIo+Dz8MBdNBoNVYpH9frpOlZO63aA=
X-Google-Smtp-Source: ABdhPJy3mI0gR9MWT/Q+ZjhBkrGApa/zji0eiC0az8mwEYmwFmD7NIk76EnOfm7FVtHEBmVv/ERifHW0n916BMKk6qI=
X-Received: by 2002:a05:6122:218f:: with SMTP id
 j15mr3067566vkd.20.1644093790242; 
 Sat, 05 Feb 2022 12:43:10 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a67:f554:0:0:0:0:0 with HTTP;
 Sat, 5 Feb 2022 12:43:09 -0800 (PST)
From: KIRA <jerrymartins411@gmail.com>
Date: Sat, 5 Feb 2022 12:43:09 -0800
Message-ID: <CACtL-Ct57WPK0znw8gWjANG8xGzoj2gzRyj1F=NX+TPD6k_r9A@mail.gmail.com>
Subject: Project Funding
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
Reply-To: kiraglobal043@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmdzLAoKCldlIGFyZSBhIGdyb3VwIG9mIExpY2Vuc2UgSW52ZXN0bWVudCBDb21wYW55
LCBhIGdsb2JhbCBMb2FuIEludmVzdG1lbnQKRnVuZGluZyBncm91cCBiYXNlZCBpbiB0aGUgVUFF
LiBXZSBhcmUgaW50ZXJlc3RlZCBpbgoKTG9hbiBGdW5kaW5nIGFyb3VuZCB0aGUgZ2xvYmUuIEJl
bG93IGFyZSBicmllZnMgb24gdGhlIEludmVzdG1lbnQgTG9hbgpGdW5kaW5nIHBvcnRmb2xpbzog
V2UgYXJlIGxvb2tpbmcgb3V0IGZvciB2aWFibGUKCkludmVzdG1lbnQgcHJvamVjdHMgb3V0c2lk
ZSB0aGUgVS5BLkUuIFdlIGNhbiBGdW5kIGFzIGEgc29mdCBMb2FuCnVuZGVyIG91ciBvbmdvaW5n
IGNvcnBvcmF0ZSBGaW5hbmNlIHByb2dyYW0gYXQgMyUKCmludGVyZXN0IHJhdGUgcGVyIGFubnVt
IHdpdGhvdXQgY29sbGF0ZXJhbCBleGNlcHQgYSBTdXJldHkgQm9uZCBmcm9tClVBRSBBdXRob3Jp
dHkuCgoKCkJlbG93IGFyZSBicmllZiBvbiB0aGUgSW52ZXN0bWVudCBsb2FuIHBvcnRmb2xpbwoK
CgrigKIgICAgICAgIE1pbmltdW0gYW5kIE1heGltdW0gRnVuZGluZzogVVNEIDEgTWlsbGlvbiB0
byBVU0QgMTIgQmlsbGlvbgoK4oCiICAgICAgICBQbGFjZW1lbnQgT3BlbnMgdG86IEVudHJlcHJl
bmV1cnMsIENvcnBvcmF0aW9ucyBhbmQgSW52ZXN0b3JzCmFyb3VuZCB0aGUgZ2xvYmUKCuKAoiAg
ICAgICAgRnVuZGluZyBUeXBlOiBTb2Z0IExvYW4gSW52ZXN0bWVudCBGdW5kaW5nIHdpdGggbm8g
cGh5c2ljYWwKY29sbGF0ZXJhbCByZXF1aXJlbWVudCBpZiB5b3UgYXJlIG91dHNpZGUgVUFFIGV4
Y2VwdCBhCgoKU3VyZXR5IEJvbmQuCgoK4oCiICAgICAgICBGdW5kaW5nIFJhdGU6IDMlIEludGVy
ZXN0IFJhdGUgUGVyIEFubnVtCgrigKIgICAgICAgIFRlcm06IDItMTAgeWVhcnMg4oCTIFJlcGF5
bWVudC9SZW5ld2FibGUgVGVudXJlCgoKCldlIGRvbid0IGhhdmUgYW55IG1ham9yIGFyZWEgb2Yg
RnVuZGluZyBidXQgd2UgZ2l2ZSBwcmlvcml0eSBhdHRlbnRpb24KdG8gUmVhbCBFc3RhdGUgRGV2
ZWxvcG1lbnQsIG90aGVyIGFyZWFzIG9mIGludGVyZXN0cwoKaW5jbHVkZTogT2lsICYgR2FzLCBB
Z3JpY3VsdHVyZSwgSGVhbHRoLCBBdmlhdGlvbiwgVG91cmlzbSwKQ29uc3RydWN0aW9uLCBJVCAm
IENvbW11bmljYXRpb25zLCBUZWNobm9sb2d5LCBFZHVjYXRpb24sCgpFbmVyZ3ksIEVuZ2luZWVy
aW5nLCBVdGlsaXRpZXMsIFRlbGVjb20sIE1pbmluZywgTWFyaXRpbWUgYW5kIGhvc3Qgb2YKb3Ro
ZXIgcHJvZml0YWJsZSB2ZW50dXJlcy4gVGhlcmVmb3JlLCBiYXNlZCBvbiB0aGUKCmFib3ZlIGlu
Zm9ybWF0aW9uLCB3ZSB3b3VsZCBiZSBnbGFkIHRvIHJlY2VpdmUgeW91ciBQcm9qZWN0IFBsYW4K
RXhlY3V0aXZlIFN1bW1hcnkgaW4gYSBjb21wYXRpYmxlIGZvcm1hdCBmb3IgcmV2aWV3IGJ5IG91
cgoKRnVuZGluZyBNYW5hZ2VtZW50IHRlYW0uCgoKSWYgeW91IGhhdmUgYW55IHZpYWJsZSBwcm9q
ZWN0IHRoYXQgcmVxdWlyZXMgRnVuZGluZywga2luZGx5IHJldmVydCBiYWNrIHRvIHVzCgoKCgoK
Ck1hbmFnZW1lbnQgVUFFCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
