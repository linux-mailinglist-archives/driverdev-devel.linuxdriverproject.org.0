Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1229D4AAC8B
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Feb 2022 21:42:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54E784057A;
	Sat,  5 Feb 2022 20:42:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jF-TbOi_QOPv; Sat,  5 Feb 2022 20:42:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DFFF540586;
	Sat,  5 Feb 2022 20:42:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B327A1BF359
 for <devel@linuxdriverproject.org>; Sat,  5 Feb 2022 20:42:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A013D408C3
 for <devel@linuxdriverproject.org>; Sat,  5 Feb 2022 20:42:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xBJvxedkQf78 for <devel@linuxdriverproject.org>;
 Sat,  5 Feb 2022 20:42:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x92d.google.com (mail-ua1-x92d.google.com
 [IPv6:2607:f8b0:4864:20::92d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03A0A40881
 for <devel@driverdev.osuosl.org>; Sat,  5 Feb 2022 20:42:28 +0000 (UTC)
Received: by mail-ua1-x92d.google.com with SMTP id b37so16672630uad.12
 for <devel@driverdev.osuosl.org>; Sat, 05 Feb 2022 12:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=UbFv4nv+QVAdtjvi7O8iXvj0cuzj68CSDExBVSlrmPM=;
 b=Q3b+ntmrJlH4OpotOpN1tsch4HcoVYduAlUKPWdm2g6bKr+tMe/k1dD1I0anDKdBAe
 /Ixocf9hW2Vqv9CM7SF6CBdUH1hr5IdDXnC2GXwofNptMKxF8E5qkVw9TLJ9lEgzjQRB
 /M1Hwq9z7ckMQvRlDcD1+cB0CNMK2FJB8HzaWLPxqw8jal43afrqbNI7K66L11518vJs
 VsJBupPTNYQyd+g+j/Tr9IYQeWWP8I2hUfKAegEj7MscICplccjXCGRHFivWAnQuT4GL
 fuiHttP3e2oorYFamBaZCkDyqCXvJ6u/Nm6A4yFt56PlANbkXSjl843Y24YGYffKhTKZ
 rEgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=UbFv4nv+QVAdtjvi7O8iXvj0cuzj68CSDExBVSlrmPM=;
 b=sDXen4gO3AxQN3OyQ0jscBQCgS5YQWvDxCQaAGPW+Kfrjyr2V2vs8NEddWwUEiPhSf
 nPpFJ4ChqXc9N//YPVTI7iecjvuFTJCVrV7hS5+re1GKbSIzOAqcDx+aO5oawi7iuEXF
 5wvzWRi+HB08Y3ncOiliAQ3xYvDfXJi0ghcwxWxOriNLESIa+SKn5RSc0pjLQSOwyWvK
 vA9tI7bQpMiv6FGIrN740Fnn6jQBO84kR4GUmOPEMooS0g6i3D8Gz7sISsSUBsraX7Um
 dsIdCAxo1sC/s5l81noJqTyH3FDbT/uFbDOjWMOus3+wyk2fdKfTdGphuSIdowBTJ6UY
 +5YA==
X-Gm-Message-State: AOAM530iz+6mvf+bCL2UJ9sEPEwT9JKX58pSSD6qQfnQWPOYRrJnmjCK
 mvx+rbA5W7nvuy6BKnXvZRaexK4oR/N2zpR7XP8=
X-Google-Smtp-Source: ABdhPJzQNSdQbtOme53ZFspm5mPsX4UOmYNuw0TrCCsFz/foahm6Mu/ReW3MLI8GXqzn5EOWCVAvE1n2Ja5Dqp/xPFM=
X-Received: by 2002:ab0:22d:: with SMTP id 42mr1256654uas.105.1644093747432;
 Sat, 05 Feb 2022 12:42:27 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a67:f554:0:0:0:0:0 with HTTP;
 Sat, 5 Feb 2022 12:42:26 -0800 (PST)
From: KIRA <jerrymartins411@gmail.com>
Date: Sat, 5 Feb 2022 12:42:26 -0800
Message-ID: <CACtL-CvwLtTb7cDkOPos5qBNAwdm7beRXagPt+0Z_GdonGwQJQ@mail.gmail.com>
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
