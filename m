Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F84C4878F4
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jan 2022 15:30:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB04D424B7;
	Fri,  7 Jan 2022 14:29:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DMLW3-jxHO5Y; Fri,  7 Jan 2022 14:29:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 664AC4249E;
	Fri,  7 Jan 2022 14:29:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5095A1BF2C8
 for <devel@linuxdriverproject.org>; Fri,  7 Jan 2022 14:29:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A41F4042B
 for <devel@linuxdriverproject.org>; Fri,  7 Jan 2022 14:29:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w66j0GVr--3e for <devel@linuxdriverproject.org>;
 Fri,  7 Jan 2022 14:29:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com
 [IPv6:2607:f8b0:4864:20::b31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7218940002
 for <devel@driverdev.osuosl.org>; Fri,  7 Jan 2022 14:29:45 +0000 (UTC)
Received: by mail-yb1-xb31.google.com with SMTP id d201so17153880ybc.7
 for <devel@driverdev.osuosl.org>; Fri, 07 Jan 2022 06:29:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=08UG9ldMiIKdmS2iZih9on1+nM9rLQX/zKMslKeCB3s=;
 b=arPtywOXHOK1x2rLYs2dqyUQ/5VxvCa5F8n+c+YbTzANQKyGVzc1f/gcrhe8J7Qtvi
 ZwnQXkrlqqV7oc3eJnZwOEAESu2EN4KX7lTkdwZxueyQ5PN/kgsm4EG9zAxaz/buFsn4
 sLGq/vocZJ2DYkDDDXEIpsm1luggYwYHi7XDrbMUbb72z/MKRukblouRYAe9JexEvW3V
 9n/hIzQp3MMyjnmzeHwDhBB9irzkdQosxjo1r+9RxfgxcziCJSeS81YqChgA2zzzWsxM
 f8jve0cTCQgekqYOxph1w6WFMaNL10M/rr0Z6P7wyV162Zqk37jKl/1gbE6b0bIvof8R
 WxAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=08UG9ldMiIKdmS2iZih9on1+nM9rLQX/zKMslKeCB3s=;
 b=7p5lh5WSGhDec/zhA5oRPukXI5p+4cvC8cZnO5GJC9VKbiArBQd9r5MOpdJqt/oXrJ
 ihy/2ZgGqQE7plGPfUkh6GqlJ7SgG7a0fa8sMhYZ7GNWLD/O1CHRJiaGh6PPv5idASbg
 2GDycskEhQ9Ru2kQd6UUDa+umFSaxKMg5VaTe0/DREjJvPzrHRaZk1DCQjNhsyMywts0
 VtbxA/yXc6Wr2uKf/JtgE98qwuWV8d07V0qT3XiDHmKHdDCUXOk/IC1g883f1wY1v+Ys
 zURlAuXZCRBWJ1q2Pdx5VM7SghdqeD941/QIBa9//Km15RLDUcEmawzutKZvqXczVc9M
 7JJA==
X-Gm-Message-State: AOAM533Xurz28qnBxhdi9eea8bONZc+n94+83YoMOua9J0t92ZEAAoX9
 Ovuedvviw2hjMoPdobE6bJd6e3w7MUNSTg2x5ZM=
X-Google-Smtp-Source: ABdhPJw4rA8UarZhM4eCUYynLkBQqEJ3Hu2qB0aQnMLllChgMlPfN32IFch04uJthqxRTWXtjAa8gu/Xg4VHBkXNFVY=
X-Received: by 2002:a05:6902:1246:: with SMTP id
 t6mr54111873ybu.431.1641565784401; 
 Fri, 07 Jan 2022 06:29:44 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7110:4811:b0:11f:a3bf:2f1c with HTTP; Fri, 7 Jan 2022
 06:29:44 -0800 (PST)
From: Mrs Nancy Gerard <fileoffice393@gmail.com>
Date: Fri, 7 Jan 2022 15:29:44 +0100
Message-ID: <CAP53G494dXj3EDxUoq6JEvaVQ5_TCW_RH+T9dbv2ixYY1BZ7qw@mail.gmail.com>
Subject: Dear friend Contact my secretary
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
Reply-To: fahham.abuahmad1971@aol.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBmcmllbmQgQ29udGFjdCBteSBzZWNyZXRhcnkKCgpJIGFtIHNvcnJ5IHRvIHRlbGwgeW91
IGFib3V0IG15IHN1Y2Nlc3NlcyBnZXR0aW5nIHRoZSBmdW5kIHJlbWl0dGVkCnRocm91Z2ggYSBj
by1vcGVyYXRpb24gb2YgbmV3IGJ1c2luZXNzIHBhcnRuZXIgZnJvbSBVLUVtaXJhdGVzIEkgdHJp
ZWQKbXkgcG9zc2libGUgYmVzdCB0byBpbnZvbHZlcyB5b3XigJlyZSBpbiBHb2xkIGFuZCBEaWFt
b25kIGJ1c2luZXNzLApBbG1pZ2h0eSBkZWNpZGVkIHdob2xlIGNvbmRpdGlvbnMgSSBhbSBwcmVz
ZW50bHkgaW4gQmFuZ2xhZGVzaCBmb3IKcHJvamVjdC9pbnZlc3RtZW50cyB3aXRoIG15IG93bmVy
IHBlcmNlbnRhZ2Ugc2hhcmUgb2YgdG90YWwgZnVuZCBzdW0KCkkgZG9u4oCZdCBmb3JnZXQgeW91
IHBhc3QgYXR0ZW1wdHMvZWZmb3J0IGZvciBhc3Npc3RzIG1lIGluIHJlbWl0dGFuY2UKb2YgdGhl
IGZ1bmQgZGVzcGl0ZSB0aGF0IGl04oCZcyBmYWlsZWQgdXMgdGhhdCBwZXJpb2QgdGltZQoKWW91
IHNob3VsZCBjb250YWN0IG15IHNlY3JldGFyeSBpbiBCdXJraW5hIEZhc28gaGlzIE5hbWUuIE1y
LiBmYWhoYW0KYWJ1YWhtYWQgYW5kIGhpcyBFbWFpbC4gIGZhaGhhbS5hYnVhaG1hZDE5NzFAYW9s
LmNvbQoKVGVsbC9hZHZpY2UgaGltIHRvIHNlbmQgeW91IEFUTSBWaXNhIENhcmQgc3VtIG9mIChV
U0QgJDIsNTAwLDAwMCkgSQprZXB0IGZvciB5b3VyIGNvbXBlbnNhdGlvbnMgaW4gYWxsIHBhc3Qg
YXR0ZW1wdHMvZWZmb3J0IHlvdSBtYWRlIGZvcgphc3Npc3QgbWUgaW4gcGFzdCBJIHNvIG11Y2gg
YXBwcmVjaWF0ZWQgeW91ciBhc3Npc3QvZWZmb3J0IGR1cmluZyB0aGUKcGVyaW9kIHRpbWUgc28g
ZmVlbCBmcmVlIGdldCBpbiB0b3VjaCB3aXRoIG15IHNlY3JldGFyeSBoaXMgbmFtZSBNci4KZmFo
aGFtIGFidWFobWFkIGluc3RydWN0cyBoaW0gd2hlcmUgdG8gc2VuZCB0aGUgQVRNIFZpc2EgQ2Fy
ZCB3b3J0aCBvZgooVVNEICQyLDUwMCwwMDApIHRvIHlvdS4KClRoaXMgYW1vdW50IGlzIG1lIGFu
ZCBteSBuZXcgcGFydG5lciBjb250cmlidXRlZCBpdCB0byBvZmZlcmVkIHlvdQphbW91bnQgKFVT
RCAkMSw1MDAsMDAwKSBpcyBmcm9tIG15IG93biBwZXJjZW50YWdlIHNoYXJlIHRoZW4gbXkgbmV3
CnBhcnRuZXIgb2ZmZXJlZCB5b3UgKFVTRCAkMSwwMDAsMDAwKSBmcm9tIGhpcyBvd24gcGVyY2Vu
dGFnZSBzaGFyZQpiZWNhdXNlIEkgZXhwbGFpbmVkIGV2ZXJ5dGhpbmcgdG8gaGltIHRoYXQgeW91
IGFyZSB0aGUgZmlyc3QgcGVyc29uIEkKY29udGFjdGVkIHdobyBhc3Npc3RpbmcgbWUgYnV0IHlv
dSBjb3VsZG7igJl0IG1ha2UgaXQgaGUgc2F5cyBva2F5CnRoZXJl4oCZcyBubyBwcm9ibGVtCgpO
b3cgeW91IHNob3VsZCBrZWVwIGV2ZXJ5dGhpbmcgc2VjcmV0L2NvbmZpZGVudGlhbCBmb3IgbXkg
c3VjY2Vzc2Z1bGx5CmJlY2F1c2UgSSBrbm93IHRoYXQgaXQgd2FzIG9ubHkgeW91IGtuZXcgaG93
IEkgbWFkZSB0aGlzIG1vbmV5IGluIGxpZmUKc28ga2VwdCBldmVyeXRoaW5nIHNlY3JldC9jb25m
aWRlbnRpYWwsIEkgaG9wZSB5b3UgdW5kZXJzdG9vZCByZWFzb24Kd2h5IHRoaXMgYmlnIGFtb3Vu
dCBvZiBtb25leSB3YXMga2VwdCBmb3IgeW91Pz8KClBsZWFzZSBkdSBpbmZvcm0gbWUgaW1tZWRp
YXRlbHkgeW91IHJlY2VpdmVkIHRoZSBBVE0gVmlzYSBDYXJkIHN1bSBvZgooVVNEICQyLDUwMCww
MDApIHNvIHRoYXQgd2Ugd2lsbCBzaGFyZSBvdXIgam95cyBhZnRlciBhbGwgc3VmZmVyaW5nIGF0
CnBhc3QgdGltZSBwZXJpb2QsIGFtIGhlcmUgYmVjYXVzZSBJIGFuZCBteSBuZXcgcGFydG5lciBo
YXZpbmcgYmlnCmludmVzdG1lbnQgcHJvamVjdHMgYXQgaGFuZHMgbm93CgpZb3Ugc2hvdWxkIHJl
bWVtYmVyZWQgdGhhdCBJIGhhdmUgZm9yd2FyZCBpbnN0cnVjdGlvbnMgdG8gdGhlCnNlY3JldGFy
eSBvbiB5b3VyIGJlaGFsZiB0byBzZW5kIHRoZSBBVE0gVmlzYSBDYXJkIHRvIHlvdSBpbW1lZGlh
dGVseSwKc28gZmVlbCBmcmVlIHRvIGNvbnRhY3QgbXkgc2VjcmV0YXJ5IHNvIHRoYXQgaGUgd2ls
bCBzZW5kIHRoZSBBVE0gVmlzYQpDYXJkIHN1bSBvZiBUd28gTWlsbGlvbiBGaXZlLUh1bmRyZWQg
VGhvdXNhbmQgVW5pdGVkIFN0YXRlIERvbGxhcnMKKFVTRCAkMiw1MDAsMDAwKSB0byB5b3UgaW1t
ZWRpYXRlbHkgd2l0aG91dCBkZWxheS4KCllvdXJzIGZhaXRoZnVsbHkKTXIuIEFtaXIgQXppegpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
