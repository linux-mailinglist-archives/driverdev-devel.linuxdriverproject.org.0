Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E0F4B17B4
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Feb 2022 22:39:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B65C8174C;
	Thu, 10 Feb 2022 21:39:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U4ee90WhxyAj; Thu, 10 Feb 2022 21:39:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 59B3B8138C;
	Thu, 10 Feb 2022 21:39:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B9EE1BF2EC
 for <devel@linuxdriverproject.org>; Thu, 10 Feb 2022 21:39:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 57AF882E1A
 for <devel@linuxdriverproject.org>; Thu, 10 Feb 2022 21:39:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xssdJ8Yrx7a0 for <devel@linuxdriverproject.org>;
 Thu, 10 Feb 2022 21:39:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com
 [IPv6:2607:f8b0:4864:20::b43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF20D82DE6
 for <devel@driverdev.osuosl.org>; Thu, 10 Feb 2022 21:39:05 +0000 (UTC)
Received: by mail-yb1-xb43.google.com with SMTP id g14so19392994ybs.8
 for <devel@driverdev.osuosl.org>; Thu, 10 Feb 2022 13:39:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=pgF0g3j+sttgk2Y2clJ4ES0Z+1g9uxaU6XBOEQLTes8=;
 b=j5UdB3pAfPBfGh8q8VNvdVNmEmgh6AJdlaekBmDeVf4yJCbVNfZ73uMBzC6bVGbbfN
 RHP7qJxL3RhQ4L3H6WC8tfLuPa77022/Pigjp2IFyzMdhz+vGB7jsS2X/JPiFc7tKL13
 VMZY/AB//rTTE/cz8MvuXoh4lWnfhOPljrcpof9jq+KMv3LayGfsIBel8SyG4gnhJ7Zo
 mcLLe/loZGz7SIy6v7NfkLELOjvhfpbZd49BqmnpvHSWf0rMmtsv/PejvzZqrp33F91X
 5N7rRw4AgWEBE+1P6GCJ38Rrqkn4zJc1CZ28x5hbrBTUOYJjwTPAs+QKMaIX/1cC+/HM
 7FUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=pgF0g3j+sttgk2Y2clJ4ES0Z+1g9uxaU6XBOEQLTes8=;
 b=5UqkMKiOcVFXdF7CgyjlJjT8IXjjhD0X6F9uW4wmsMs9xK837YgVFw2+nND1bA7Ixy
 WIcfnEz/+Wt6CWPzK/J7T/6LYmWc0J/rARzAd7EGZ8N/5yDYxx4eRB/3cMdueCi/VxVb
 Ma9kfKMcgahQea+ZLo9MWlrLFO1PGB3XdHliXF8U7DivDt6SC7mN7GmZ2J97xe0WYtBU
 1jOP6HkOtHYTRBh7Q2R+wtiLR4bxJmBijUp/ZxVDEfA0PaLkDvD6/NEzfizkq/yCy0Om
 xGNwpRwO4wNqnnh8b+EF17NEd7s4xdw9o3Rzm+Tj93V8qpXKps7n7J22eJAaaRTW/EwQ
 ixMg==
X-Gm-Message-State: AOAM530pg2kuk3GIVqQ3jn6moHRk1xxbLJwGUJWaJHp6bxmhwLpVp7cA
 3E9rM82S3gWOhBK7Lvc2aMeC5mmEN/YvJeW4tRM=
X-Google-Smtp-Source: ABdhPJzM99aU5xips3UvgKBFw5ORUE5c61TYmbC52RUVcZ9ib5rh9A51fbJcRdPJSwaGW1+nW0xHqzEiuz9CHY9gPj8=
X-Received: by 2002:a81:4509:: with SMTP id s9mr9651303ywa.66.1644529144500;
 Thu, 10 Feb 2022 13:39:04 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:7b95:b0:20d:b800:3ac9 with HTTP; Thu, 10 Feb 2022
 13:39:04 -0800 (PST)
From: Mrs Aisha Al-Qaddafi <mrsaishaalqaddfimrsaishaalqadd@gmail.com>
Date: Thu, 10 Feb 2022 13:39:04 -0800
X-Google-Sender-Auth: YFzE-9upxIdlzPUkIQnUt_NUw_w
Message-ID: <CAJoS3FgGTeW4hBdU9XBihgXOsoN7h8pL2HqM3OukEKXk3azVig@mail.gmail.com>
Subject: My Beloved One, i need your assistance
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

SGVsbG8gTXkgQmVsb3ZlZCBPbmUsIGkgbmVlZCB5b3VyIGFzc2lzdGFuY2UsCgpQbGVhc2UgYmVh
ciB3aXRoIG1lLiBJIGFtIHdyaXRpbmcgdGhpcyBsZXR0ZXIgdG8geW91IHdpdGggdGVhcnMgYW5k
CnNvcnJvdyBmcm9tIG15IGhlYXJ0LgoKSSBhbSBBaXNoYSBNdWFtbWFyIEdhZGRhZmksIHRoZSBv
bmx5IGRhdWdodGVyIG9mIHRoZSBlbWJhdHRsZWQKcHJlc2lkZW50IG9mIExpYnlhLCBIb24uIE11
YW1tYXIgR2FkZGFmaS4gSSBrbm93IG15IG1haWwgbWlnaHQgY29tZQoKdG8geW91IGFzIGEgc3Vy
cHJpc2UgYmVjYXVzZSB5b3UgZG9u4oCZdCBrbm93IG1lLCBidXQgZHVlIHRvIHRoZQp1bnNvbGlj
aXRlZCBuYXR1cmUgb2YgbXkgc2l0dWF0aW9uIGhlcmUgaW4gUmVmdWdlZSBjYW1wIE91YWdhZG91
Z291CgpCdXJraW5hIEZhc28gaSBkZWNpZGVkIHRvIGNvbnRhY3QgeW91IGZvciBoZWxwLiBJIGhh
dmUgcGFzc2VkIHRocm91Z2gKcGFpbnMgYW5kIHNvcnJvd2Z1bCBtb21lbnRzIHNpbmNlIHRoZSBk
ZWF0aCBvZiBteSBmYXRoZXIuIEF0IHRoZQoKc2FtZSB0aW1lLCBteSBmYW1pbHkgaXMgdGhlIHRh
cmdldCBvZiBXZXN0ZXJuIG5hdGlvbnMgbGVkIGJ5IE5hdG8gd2hvCndhbnQgdG8gZGVzdHJveSBt
eSBmYXRoZXIgYXQgYWxsIGNvc3RzLiBPdXIgaW52ZXN0bWVudHMgYW5kIGJhbmsKCmFjY291bnRz
IGluIHNldmVyYWwgY291bnRyaWVzIGFyZSB0aGVpciB0YXJnZXRzIHRvIGZyZWV6ZS4KCk15IEZh
dGhlciBvZiBibGVzc2VkIG1lbW9yeSBkZXBvc2l0ZWQgdGhlIHN1bSBvZiAkMjcuNU0gKFR3ZW50
eSBTZXZlbgpNaWxsaW9uIEZpdmUgSHVuZHJlZCBUaG91c2FuZCBEb2xsYXJzKSBpbiBhIEJhbmsg
YXQgQnVya2luYQoKRmFzbyB3aGljaCBoZSB1c2VkIG15IG5hbWUgYXMgdGhlIG5leHQgb2Yga2lu
LiBJIGhhdmUgYmVlbgpjb21taXNzaW9uZWQgYnkgdGhlIChCT0EpIGJhbmsgdG8gcHJlc2VudCBh
biBpbnRlcmVzdGVkIGZvcmVpZ24KCmludmVzdG9yL3BhcnRuZXIgd2hvIGNhbiBzdGFuZCBhcyBt
eSB0cnVzdGVlIGFuZCByZWNlaXZlIHRoZSBmdW5kIGluCmhpcyBhY2NvdW50IGZvciBhIHBvc3Np
YmxlIGludmVzdG1lbnQgaW4gaGlzIGNvdW50cnkgZHVlIHRvIG15CgpyZWZ1Z2VlIHN0YXR1cyBo
ZXJlIGluIEJ1cmtpbmEgRmFzby4KCkkgYW0gaW4gc2VhcmNoIG9mIGFuIGhvbmVzdCBhbmQgcmVs
aWFibGUgcGVyc29uIHdobyB3aWxsIGhlbHAgbWUgYW5kCnN0YW5kIGFzIG15IHRydXN0ZWUgc28g
dGhhdCBJIHdpbGwgcHJlc2VudCBoaW0gdG8gdGhlIEJhbmsgZm9yIHRoZQoKdHJhbnNmZXIgb2Yg
dGhlIGZ1bmQgdG8gaGlzIGJhbmsgYWNjb3VudCBvdmVyc2Vhcy4gSSBoYXZlIGNob3NlbiB0bwpj
b250YWN0IHlvdSBhZnRlciBteSBwcmF5ZXJzIGFuZCBJIGJlbGlldmUgdGhhdCB5b3Ugd2lsbCBu
b3QgYmV0cmF5IG15Cgp0cnVzdCBidXQgcmF0aGVyIHRha2UgbWUgYXMgeW91ciBvd24gc2lzdGVy
IG9yIGRhdWdodGVyLiBJZiB0aGlzCnRyYW5zYWN0aW9uIGludGVyZXN0cyB5b3UsIHlvdSBkb24n
dCBoYXZlIHRvIGRpc2Nsb3NlIGl0IHRvIGFueWJvZHkKYmVjYXVzZQoKb2Ygd2hhdCBpcyBnb2lu
ZyBvbiB3aXRoIG15IGVudGlyZSBmYW1pbHksIGlmIHRoZSBVbml0ZWQgbmF0aW9uCmhhcHBlbnMg
dG8ga25vdyB0aGlzIGFjY291bnQsIHRoZXkgd2lsbCBmcmVlemUgaXQgYXMgdGhleSBmcmVlemUK
b3RoZXJzLCBzbwoKcGxlYXNlIGtlZXAgdGhpcyB0cmFuc2FjdGlvbiBvbmx5IHRvIHlvdXJzZWxm
IHVudGlsIHdlIGZpbmFsaXplIGl0LgoKU29ycnkgZm9yIG15IHBpY3R1cmVzLiBJIHdpbGwgZW5j
bG9zZSBpdCBpbiBteSBuZXh0IG1haWwgYW5kIG1vcmUKYWJvdXQgbWUgd2hlbiBJIGhlYXIgZnJv
bSB5b3Ugb2theS4KCllvdXJzIFNpbmNlcmVseQpCZXN0IFJlZ2FyZCwKQWlzaGEgR2FkZGFmaQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
