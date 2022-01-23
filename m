Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 035F2496F4B
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Jan 2022 01:53:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A0A682435;
	Sun, 23 Jan 2022 00:53:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nN_9j7c1fh6p; Sun, 23 Jan 2022 00:53:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F65D8142F;
	Sun, 23 Jan 2022 00:53:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0AC7B1BF963
 for <devel@linuxdriverproject.org>; Sun, 23 Jan 2022 00:53:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB5EB40321
 for <devel@linuxdriverproject.org>; Sun, 23 Jan 2022 00:53:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GJ7gzQz5ekgS for <devel@linuxdriverproject.org>;
 Sun, 23 Jan 2022 00:53:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com
 [IPv6:2607:f8b0:4864:20::b41])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E601402E1
 for <devel@driverdev.osuosl.org>; Sun, 23 Jan 2022 00:53:18 +0000 (UTC)
Received: by mail-yb1-xb41.google.com with SMTP id m1so39385358ybo.5
 for <devel@driverdev.osuosl.org>; Sat, 22 Jan 2022 16:53:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=9DfNLSIaAIKXx0ckp80d3IsFcYpD3uyRCCEI5O9irJY=;
 b=PmQGgcaBCEM0Z+zBbDM/8IX+tnPPL3cU8B9EG8ewpMqCbOIUjyXmpdksab1mp5LTNU
 z915DugtPCHqpzEeXGX1kn4Xu/qfuh7Qw5YCFDikLhjvbG96YvVr3ZJjPhacdjdm55p/
 u/MUyWSm+yuEMBE1DsAHwym3wNfcT11hVxIEQbBt3KXPQeCadRh4rM8AljcrCpcQzb21
 KGH5awXk0R4oYv6qll20vBOgnV3Th/kh6hA1aP0itg+am/Ulw6MDcLw5lQteApqNZbjv
 bpMkif5ioswMKF0+4GMpjtM5IplDMrJzomRqFtRzmOgOEF+FbKeT++KUgddlVgm3yAAF
 eNcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=9DfNLSIaAIKXx0ckp80d3IsFcYpD3uyRCCEI5O9irJY=;
 b=fSd/ninpm65whRIiRTkQPhYnKsGZnKsQP33MykhXEqPhwyFeVl+3Mj0qfXVxtaraBx
 a8/Cl1hyss9nW///EZEoe+UXvBiCBK1DVXFMVPf7TCUDyw9m76skKcIa5Hku7gHCl+b7
 Q1cpXtjETImT9mFUqXIzzr9KqKePh2Bvvd7bOKKA/I7SZExPyQpPU7ZOoJBwjnkn2az1
 Te0k4FUq4rpkyDZR/AGmKWKf6oJAGhHbyK6K50eUAESutWzxZ20Vn3nw8mzTwzJs1Pmd
 0CdO6Nr3BCs5xHNxHPbm7fD7E7H2FemlCuIvoo7lGVvW/woBRZJHiu0FpkiioSdNXFHL
 kZ0A==
X-Gm-Message-State: AOAM533UNCm64LOHEnZNuklpOT7r1hlNRW9cZyFd1RjtYbxoNZml7Z/4
 e7AvXEp2ejtkbTwYfv7/NDKhxekxTR2IdSbMhWg=
X-Google-Smtp-Source: ABdhPJwLbYldI5Umxq84bJDczIEfujFK+HTOj7jtJTOqGT5rPU/I/Ha8IDm19pRNheafwVeChCXmyayZma4bj7zViuA=
X-Received: by 2002:a25:d281:: with SMTP id
 j123mr13814086ybg.428.1642899197236; 
 Sat, 22 Jan 2022 16:53:17 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7110:3599:b0:127:5ce4:9e8b with HTTP; Sat, 22 Jan 2022
 16:53:16 -0800 (PST)
From: Mrs Aisha Al-Qaddafi <mrsaishaalqaddfi@gmail.com>
Date: Sat, 22 Jan 2022 16:53:16 -0800
X-Google-Sender-Auth: BRkiP3U-SM2fVD3ZD9HHKWbtTWE
Message-ID: <CA+SeF-84Bat96H6gvC9ekQS6znEscPgupx87-hukpQBYh1goag@mail.gmail.com>
Subject: HI Dear friend please can i trust you
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
