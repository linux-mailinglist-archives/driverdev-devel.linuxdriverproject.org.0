Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47456496F48
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Jan 2022 01:53:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB76440471;
	Sun, 23 Jan 2022 00:53:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rHPc3R2uHD4P; Sun, 23 Jan 2022 00:53:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F1EC401A4;
	Sun, 23 Jan 2022 00:53:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AD3CA1BF963
 for <devel@linuxdriverproject.org>; Sun, 23 Jan 2022 00:52:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9589840247
 for <devel@linuxdriverproject.org>; Sun, 23 Jan 2022 00:52:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fMn0tTClRnMc for <devel@linuxdriverproject.org>;
 Sun, 23 Jan 2022 00:52:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com
 [IPv6:2607:f8b0:4864:20::b43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DCF3740240
 for <devel@driverdev.osuosl.org>; Sun, 23 Jan 2022 00:52:55 +0000 (UTC)
Received: by mail-yb1-xb43.google.com with SMTP id m1so39384360ybo.5
 for <devel@driverdev.osuosl.org>; Sat, 22 Jan 2022 16:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=9DfNLSIaAIKXx0ckp80d3IsFcYpD3uyRCCEI5O9irJY=;
 b=f9E0p4+hiPyCwW/Ot+6fiP93sRB/7xAevgOuv65oAFDyHhUCcFAq3QKLHg3/tr+JxK
 WAgdO4/OTQGHuWy+Kv3ixkpHmkVXd1Knin+TpBvLdEA6R/HV9cOM+nXyfFVt2sDx+Xu9
 jKfQwWHbK6rXmH9r/E9DGw0GycxwdtyTwplvcX6HQpaLI1tKLfkMvebKzsiHh8jz/+v4
 rGVLXKMkbWEN8a3rszR0IBNnWUVEbp8UoenmhLo/IVwxt3lvEOorJvIm0WXsnUrGuCLV
 1FOjv6Ak6JI36KSwKLkfkgLRqVHz1nW45+BZqRB+v1Nb9Nt3h1wDw0F85sulULql/5vh
 +ipA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=9DfNLSIaAIKXx0ckp80d3IsFcYpD3uyRCCEI5O9irJY=;
 b=U2JhpbpnsfgzXZgoUX59kBun8rLbEdaMd22iBK+d0nETIKYhz7cgRSElNat7oBr7Pt
 VMNeAl1PJEtxLuYQ0e6s2+3WhUo2E8Xh9Wo/BiiPD/AZPsH5l96ciyC87Dx4n9G4OlGi
 qWgjo5i2BymKqu0MQC47eS6lsP2eVfM7CaXUjZqgIotNBo2pdqH87DDGs4IVDgsG0u6k
 p7rtDuxXe03oWh17gQglglaUweGfDyPxafrqg9UzE03aQgLJGVN8M7c9eP1sl3a7BG+V
 /cdZrzUGajbTD2y1JBVjk3yYsXSzIHF0Zg+XzK1PrjmZlI157uQHIHnlSgzOTVvOkIfr
 DNdg==
X-Gm-Message-State: AOAM532/YDoLXG9P6cOSZ/+y2h8QLHqHAVG5BNvHh4an4CtBc8TR7R6E
 fOVQElGFL0A3LanTYM5Id8w2KXRbdWzLbTjaqm8=
X-Google-Smtp-Source: ABdhPJxNXvZh1uw5K8zCuAnaSKq2i1UjtZL4cKEGp9z5t76mVJzLWG4RxOGfMIrc8TZCPJXpkCEzN/b+yo6l/8YOhHs=
X-Received: by 2002:a5b:3c1:: with SMTP id t1mr14666364ybp.486.1642899174758; 
 Sat, 22 Jan 2022 16:52:54 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6900:1acc:0:0:0:0 with HTTP; Sat, 22 Jan 2022 16:52:54
 -0800 (PST)
From: Mrs Aisha Al-Qaddafi <mrsaishaalqaddfi@gmail.com>
Date: Sat, 22 Jan 2022 16:52:54 -0800
X-Google-Sender-Auth: AEGzPRkMYIufVFTEIHOzq1jj5xM
Message-ID: <CAMbiXUc6F=qwLVzp5SB3Yzrorg1hddc05cvLdtjQibNHD2Z=mQ@mail.gmail.com>
Subject: My Beloved One, i need your assistance,
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

UGxlYXNlIGJlYXIgd2l0aCBtZS4gSSBhbSB3cml0aW5nIHRoaXMgbGV0dGVyIHRvIHlvdSB3aXRo
IHRlYXJzIGFuZApzb3Jyb3cgZnJvbSBteSBoZWFydC4KCkkgYW0gQWlzaGEgTXVhbW1hciBHYWRk
YWZpLCB0aGUgb25seSBkYXVnaHRlciBvZiB0aGUgZW1iYXR0bGVkCnByZXNpZGVudCBvZiBMaWJ5
YSwgSG9uLgoKTXVhbW1hciBHYWRkYWZpLiBJIGtub3cgbXkgbWFpbCBtaWdodCBjb21lIHRvIHlv
dSBhcyBhIHN1cnByaXNlCmJlY2F1c2UgeW91IGRvbuKAmXQga25vdyBtZSwKCmJ1dCBkdWUgdG8g
dGhlIHVuc29saWNpdGVkIG5hdHVyZSBvZiBteSBzaXR1YXRpb24gaGVyZSBpbiBSZWZ1Z2VlIGNh
bXAKT3VhZ2Fkb3Vnb3UgQnVya2luYQoKRmFzbyBpIGRlY2lkZWQgdG8gY29udGFjdCB5b3UgZm9y
IGhlbHAuIEkgaGF2ZSBwYXNzZWQgdGhyb3VnaCBwYWlucwphbmQgc29ycm93ZnVsIG1vbWVudHMK
CnNpbmNlIHRoZSBkZWF0aCBvZiBteSBmYXRoZXIuIEF0IHRoZSBzYW1lIHRpbWUsIG15IGZhbWls
eSBpcyB0aGUKdGFyZ2V0IG9mIFdlc3Rlcm4gbmF0aW9ucwoKbGVkIGJ5IE5hdG8gd2hvIHdhbnQg
dG8gZGVzdHJveSBteSBmYXRoZXIgYXQgYWxsIGNvc3RzLiBPdXIKaW52ZXN0bWVudHMgYW5kIGJh
bmsgYWNjb3VudHMKCmluIHNldmVyYWwgY291bnRyaWVzIGFyZSB0aGVpciB0YXJnZXRzIHRvIGZy
ZWV6ZS4KCk15IEZhdGhlciBvZiBibGVzc2VkIG1lbW9yeSBkZXBvc2l0ZWQgdGhlIHN1bSBvZiAk
MjcuNU0gKFR3ZW50eSBTZXZlbgpNaWxsaW9uIEZpdmUgSHVuZHJlZAoKVGhvdXNhbmQgRG9sbGFy
cykgaW4gYSBCYW5rIGF0IEJ1cmtpbmEgRmFzbyB3aGljaCBoZSB1c2VkIG15IG5hbWUgYXMKdGhl
IG5leHQgb2Yga2luLiBJCgpoYXZlIGJlZW4gY29tbWlzc2lvbmVkIGJ5IHRoZSAoQk9BKSBiYW5r
IHRvIHByZXNlbnQgYW4gaW50ZXJlc3RlZApmb3JlaWduIGludmVzdG9yL3BhcnRuZXIKCndobyBj
YW4gc3RhbmQgYXMgbXkgdHJ1c3RlZSBhbmQgcmVjZWl2ZSB0aGUgZnVuZCBpbiBoaXMgYWNjb3Vu
dCBmb3IgYQpwb3NzaWJsZSBpbnZlc3RtZW50CgppbiBoaXMgY291bnRyeSBkdWUgdG8gbXkgcmVm
dWdlZSBzdGF0dXMgaGVyZSBpbiBCdXJraW5hIEZhc28uCgpJIGFtIGluIHNlYXJjaCBvZiBhbiBo
b25lc3QgYW5kIHJlbGlhYmxlIHBlcnNvbiB3aG8gd2lsbCBoZWxwIG1lIGFuZApzdGFuZCBhcyBt
eSB0cnVzdGVlIHNvCgp0aGF0IEkgd2lsbCBwcmVzZW50IGhpbSB0byB0aGUgQmFuayBmb3IgdGhl
IHRyYW5zZmVyIG9mIHRoZSBmdW5kIHRvCmhpcyBiYW5rIGFjY291bnQKCm92ZXJzZWFzLiBJIGhh
dmUgY2hvc2VuIHRvIGNvbnRhY3QgeW91IGFmdGVyIG15IHByYXllcnMgYW5kIEkgYmVsaWV2ZQp0
aGF0IHlvdSB3aWxsIG5vdAoKYmV0cmF5IG15IHRydXN0IGJ1dCByYXRoZXIgdGFrZSBtZSBhcyB5
b3VyIG93biBzaXN0ZXIgb3IgZGF1Z2h0ZXIuIElmCnRoaXMgdHJhbnNhY3Rpb24KCmludGVyZXN0
cyB5b3UsIHlvdSBkb24ndCBoYXZlIHRvIGRpc2Nsb3NlIGl0IHRvIGFueWJvZHkgYmVjYXVzZSBv
Zgp3aGF0IGlzIGdvaW5nIG9uIHdpdGggbXkKCmVudGlyZSBmYW1pbHksIGlmIHRoZSBVbml0ZWQg
bmF0aW9uIGhhcHBlbnMgdG8ga25vdyB0aGlzIGFjY291bnQsIHRoZXkKd2lsbCBmcmVlemUgaXQg
YXMKCnRoZXkgZnJlZXplIG90aGVycywgc28gcGxlYXNlIGtlZXAgdGhpcyB0cmFuc2FjdGlvbiBv
bmx5IHRvIHlvdXJzZWxmCnVudGlsIHdlIGZpbmFsaXplIGl0LgoKU29ycnkgZm9yIG15IHBpY3R1
cmVzLiBJIHdpbGwgZW5jbG9zZSBpdCBpbiBteSBuZXh0IG1haWwgYW5kIG1vcmUKYWJvdXQgbWUg
d2hlbiBJIGhlYXIgZnJvbQoKeW91IG9rYXkuCgpZb3VycyBTaW5jZXJlbHkKQmVzdCBSZWdhcmQs
CkFpc2hhIEdhZGRhZmkKbXJzYWlzaGFhbHFhZGRhZmZpOEBnbWFpbC5jb20KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
