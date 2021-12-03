Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92471467B71
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Dec 2021 17:33:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2779240402;
	Fri,  3 Dec 2021 16:33:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RDR0coOyK_NN; Fri,  3 Dec 2021 16:32:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A9A94026E;
	Fri,  3 Dec 2021 16:32:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E63B21BF589
 for <devel@linuxdriverproject.org>; Fri,  3 Dec 2021 16:32:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D1E8582D0C
 for <devel@linuxdriverproject.org>; Fri,  3 Dec 2021 16:32:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mlf2TleXIfng for <devel@linuxdriverproject.org>;
 Fri,  3 Dec 2021 16:32:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1D98E80D78
 for <devel@driverdev.osuosl.org>; Fri,  3 Dec 2021 16:32:47 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id p2so6486449uad.11
 for <devel@driverdev.osuosl.org>; Fri, 03 Dec 2021 08:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=ZqAX4YtMqNKdsUhPlAzSCK1RUFbpc0qh6a3l6J60wAI=;
 b=mAVX5/VHJtiWNHIbAH/PzBp0CpdTwGq1f143xkfMdXXJ+5RCJCnmhGcKmNrtU1r3ZW
 G6JnhjhiguEFSR8T3LTTaCtMpm/JvffZLvPSrkoBxiLuaj9ejnMDbHJdD1sORr7YAB0W
 UBCJQPWUuKQBLpaT275BhsjDReUd/8cl20iJtM0qRAfZiubWdvdj6PDxhtZ3fPiaq0aE
 XwiHX6/t/a8Tbw/s+vqj5apFOr46gjtvMNrgpc1u6NZEgWWMp9dAursjI7YxbNkUTcHf
 p1dnFGl9Ll79u/IGrN/Ws4x+BX6Zo0raFYa5DhdGLyLcF5GHmpjFl5AgJj/C64E+SNPQ
 LIEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=ZqAX4YtMqNKdsUhPlAzSCK1RUFbpc0qh6a3l6J60wAI=;
 b=akboGgj+Y/+jbdt2LcBmBsvjF3CkTr7w7QhJG1wUGMpyF6HtD50g1JwB8Y3BaRoaiO
 LOZcIgxMrIh3Vrx69kaAMhzGQHURKbOQGaiI7sLRfhH6qtD1OanaV59Z2EZkHuDVvTgo
 UBKO9REtJe3sSgzFOQMJMCjKvP0tM2JgJYy1tvHLm8JfXffQfT0atVQxtZXrUz8bYDMk
 X1jWfvL5be2r94G9skcN5L8P5bDgxO8Ze/8JvcrcqEfaKz61J9uUoqhDJR2lz8w4H6eA
 UgOV1I2V4a7dyXZFfDVa1uYlN6EuLbmhQBcIH1ez9o/iDi+bMt3YA3sLpue/UnQ6HCrh
 3QKQ==
X-Gm-Message-State: AOAM533IhvF7alDN93tNsa59KyS4OeXvHtnFZmr749Evxk9UqGBDCvxr
 VD0m9Q0JgLwTW+nAEA93o2YysZ5D7aIJcDkOkg4=
X-Google-Smtp-Source: ABdhPJxoxsBnGD/8Scy9YzhmCL2m4QBA2TcoNYOBG5l3WMnRxHQfW9I54Nkx8sZs/ze2ZpVjctP+ZjJThgYX4vmrgyo=
X-Received: by 2002:a05:6102:ac3:: with SMTP id
 m3mr22145348vsh.1.1638549165723; 
 Fri, 03 Dec 2021 08:32:45 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:6601:0:0:0:0:0 with HTTP;
 Fri, 3 Dec 2021 08:32:44 -0800 (PST)
From: Abderazack Zebdani <engr.johnsmith022@gmail.com>
Date: Fri, 3 Dec 2021 08:32:44 -0800
X-Google-Sender-Auth: cZ6E7l613tT-tW3K_koZqZfTCN4
Message-ID: <CAD=ui854zBH2OX9poKhbU4=RQ_Yxwru-GM5P-RaB63WgeE=sUQ@mail.gmail.com>
Subject: Kindly read my proposal carefully and get back to me
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
Reply-To: abderazackzebdani7@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmdzLgoKUGxlYXNlIEkgd2FudCB5b3UgdG8gcmVhZCB0aGlzIGxldHRlciB2ZXJ5IGNh
cmVmdWxseSBhbmQgSSBtdXN0CmFwb2xvZ2l6ZSBmb3IgYmFyZ2luZyB0aGlzIG1lc3NhZ2UgaW50
byB5b3VyIG1haWwgwqBib3ggd2l0aG91dCBhbnkKZm9ybWFsIGludHJvZHVjdGlvbiBkdWUgdG8g
dGhlIHVyZ2VuY3kgYW5kIGNvbmZpZGVudGlhbGl0eSBvZiB0aGlzCmJ1c2luZXNzLiBNeSBuYW1l
IGlzIE1yLkFiZGVyYXphY2sgWmViZGFuaSwgZnJvbSBCdXJraW5hIEZhc28sIFdlc3QKQWZyaWNh
LiBJIMKgd29yayBpbiBCYW5rIE9mIEFmcmljYSAoQk9BKSBhcyB0ZWxleCBtYW5hZ2VyLCBwbGVh
c2Ugc2VlCnRoaXMgYXMgYSBjb25maWRlbnRpYWwgbWVzc2FnZSBhbmQgZG8gbm90IHJldmVhbCBp
dCB0byBhbm90aGVyIMKgcGVyc29uCmFuZCBsZXQgbWUga25vdyB3aGV0aGVyIHlvdSBjYW4gYmUg
b2YgYXNzaXN0YW5jZSByZWdhcmRpbmcgbXkgcHJvcG9zYWwKYmVsb3cgYmVjYXVzZSBpdCBpcyB0
b3Agc2VjcmV0LkkgYW0gYWJvdXQgdG8gcmV0aXJlIGZyb20gYWN0aXZlCkJhbmtpbmcgc2Vydmlj
ZSB0byBzdGFydCBhIG5ldyBsaWZlIGJ1dCBJIGFtIHNrZXB0aWNhbCB0byByZXZlYWwgdGhpcwpw
YXJ0aWN1bGFyIHNlY3JldCB0byBhIMKgc3RyYW5nZXIuIFlvdSBtdXN0IGFzc3VyZSBtZSB0aGF0
IGV2ZXJ5dGhpbmcKd2lsbCBiZSBoYW5kbGVkIGNvbmZpZGVudGlhbGx5IGJlY2F1c2Ugd2UgYXJl
IG5vdCBnb2luZyB0byBzdWZmZXIKYWdhaW4gaW4gbGlmZS7CoCBJdCBoYXMgYmVlbiAxMCB5ZWFy
cyBub3cgdGhhdCBtb3N0IG9mIHRoZSBncmVlZHkKQWZyaWNhbiBQb2xpdGljaWFucyB1c2VkIG91
ciBiYW5rIHRvIGxhdW5kZXIgbW9uZXkgb3ZlcnNlYXMgdGhyb3VnaAp0aGUgwqBoZWxwIG9mIHRo
ZWlyIFBvbGl0aWNhbCBhZHZpc2Vycy4gTW9zdCBvZiB0aGUgZnVuZHMgd2hpY2ggdGhleQp0cmFu
c2ZlcnJlZCBvdXQgb2YgdGhlIHNob3JlcyBvZiBBZnJpY2Egd2VyZSBnb2xkIGFuZCBvaWwgbW9u
ZXkgwqB0aGF0CndhcyBzdXBwb3NlZCB0byBoYXZlIGJlZW4gdXNlZCB0byBkZXZlbG9wIHRoZSBj
b250aW5lbnQuIFRoZWlyClBvbGl0aWNhbCBhZHZpc2VycyBhbHdheXMgaW5mbGF0ZWQgdGhlIGFt
b3VudHMgYmVmb3JlIMKgdHJhbnNmZXJyaW5nIHRvCmZvcmVpZ24gYWNjb3VudHMsIHNvIEkgYWxz
byB1c2VkIHRoZSBvcHBvcnR1bml0eSB0byBkaXZlcnQgcGFydCBvZiB0aGUKZnVuZHMgaGVuY2Ug
SSBhbSBhd2FyZSB0aGF0IHRoZXJlIGlzIG5vIMKgb2ZmaWNpYWwgdHJhY2Ugb2YgaG93IG11Y2gK
d2FzIHRyYW5zZmVycmVkIGFzIGFsbCB0aGUgYWNjb3VudHMgdXNlZCBmb3Igc3VjaCB0cmFuc2Zl
cnMgd2VyZSBiZWluZwpjbG9zZWQgYWZ0ZXIgdHJhbnNmZXIuIEkgwqBhY3RlZCBhcyB0aGUgQmFu
ayBPZmZpY2VyIHRvIG1vc3Qgb2YgdGhlCnBvbGl0aWNpYW5zIGFuZCB3aGVuIEkgZGlzY292ZXJl
ZCB0aGF0IHRoZXkgd2VyZSB1c2luZyBtZSB0byBzdWNjZWVkCmluIHRoZWlyIMKgZ3JlZWR5IGFj
dDsgSSBhbHNvIGNsZWFuZWQgc29tZSBvZiB0aGVpciBiYW5raW5nIHJlY29yZHMKZnJvbSB0aGUg
QmFuayBmaWxlcyBhbmQgbm8gb25lIGNhcmVkIHRvIGFzayBtZSBiZWNhdXNlIHRoZSDCoG1vbmV5
IHdhcwp0b28gbXVjaCBmb3IgdGhlbSB0byBjb250cm9sLiBUaGV5IGxhdW5kZXJlZCBvdmVyICQ1
YmlsbGlvbiBEb2xsYXJzCmR1cmluZyB0aGUgcHJvY2Vzcy4KCkJlZm9yZSBJIHNlbmQgdGhpcyBt
ZXNzYWdlIHRvIHlvdSwgSSBoYXZlIGFscmVhZHkgZGl2ZXJ0ZWQKKCQxMC41bWlsbGlvbiBEb2xs
YXJzKSB0byBhbiBlc2Nyb3cgYWNjb3VudCBiZWxvbmdpbmcgdG8gbm8gb25lIMKgaW4KdGhlIGJh
bmsuIFRoZSBiYW5rIGlzIGFueGlvdXMgbm93IHRvIGtub3cgd2hvIHRoZSBiZW5lZmljaWFyeSB0
byB0aGUKZnVuZHMgYmVjYXVzZSB0aGV5IGhhdmUgbWFkZSBhIGxvdCBvZiBwcm9maXRzIHdpdGgg
wqB0aGUgZnVuZHMuIEl0IGlzCm1vcmUgdGhhbiBFaWdodCB5ZWFycyBub3cgYW5kIG1vc3Qgb2Yg
dGhlIHBvbGl0aWNpYW5zIGFyZSBubyBsb25nZXIKdXNpbmcgb3VyIGJhbmsgdG8gdHJhbnNmZXIg
ZnVuZHMgwqBvdmVyc2Vhcy4gVGhlICgkMTAuNW1pbGxpb24gRG9sbGFycykKaGFzIGJlZW4gbGF5
aW5nIHdhc3RlIGluIG91ciBiYW5rIGFuZCBJIGRvbuKAmXQgd2FudCB0byByZXRpcmUgZnJvbSB0
aGUKYmFuayB3aXRob3V0IMKgdHJhbnNmZXJyaW5nIHRoZSBmdW5kcyB0byBhIGZvcmVpZ24gYWNj
b3VudCB0byBlbmFibGUgbWUKc2hhcmUgdGhlIHByb2NlZWRzIHdpdGggdGhlIHJlY2VpdmVyIChh
IGZvcmVpZ25lcikuIFRoZSBtb25leSB3aWxsIMKgYmUKc2hhcmVkIDYwJSBmb3IgbWUgYW5kIDQw
JSBmb3IgeW91LiBUaGVyZSBpcyBubyBvbmUgY29taW5nIHRvIGFzayB5b3UKYWJvdXQgdGhlIGZ1
bmRzIGJlY2F1c2UgSSBzZWN1cmVkIGV2ZXJ5dGhpbmcuIEkgb25seSB3YW50IHlvdSB0bwphc3Np
c3QgbWUgYnkgcHJvdmlkaW5nIGEgcmVsaWFibGUgYmFuayBhY2NvdW50IHdoZXJlIHRoZSBmdW5k
cyBjYW4gYmUKdHJhbnNmZXJyZWQuCgpZb3UgYXJlIG5vdCB0byBmYWNlIGFueSBkaWZmaWN1bHRp
ZXMgb3IgbGVnYWwgaW1wbGljYXRpb25zLiBJZiB5b3UgYXJlCmNhcGFibGUgb2YgwqByZWNlaXZp
bmcgdGhlIGZ1bmRzLCBkbyBsZXQgbWUga25vdyB0byBlbmFibGUgbWUgZ2l2ZSB5b3UKYSBkZXRh
aWxlZCBpbmZvcm1hdGlvbiBvbiB3aGF0IHRvIGRvLiBGb3IgbWUsIEkgaGF2ZSDCoG5vdCBzdG9s
ZW4gdGhlCm1vbmV5IGZyb20gYW55b25lIGJlY2F1c2UgdGhlIG90aGVyIHBlb3BsZSB0aGF0IHRv
b2sgdGhlIHdob2xlIG1vbmV5CmRpZCBub3QgZmFjZSBhbnkgcHJvYmxlbXMuIFRoaXMgaXMgwqAg
bXkgY2hhbmNlIHRvIGdyYWIgbXkgb3duIGxpZmUKb3Bwb3J0dW5pdHkgYnV0IHlvdSBtdXN0IGtl
ZXAgdGhlIGRldGFpbHMgb2YgdGhlIGZ1bmRzIHNlY3JldCB0byBhdm9pZAphbnkgbGVha2FnZXMg
YXMgbm8gwqBvbmUgaW4gdGhlIGJhbmsga25vd3MgYWJvdXQgbXkgcGxhbnMuUGxlYXNlIGdldApi
YWNrIHRvIG1lIGlmIHlvdSBhcmUgaW50ZXJlc3RlZCBhbmQgY2FwYWJsZSB0byBoYW5kbGUgdGhp
cyBwcm9qZWN0LCBJCmFtIMKgbG9va2luZyBmb3J3YXJkIHRvIGhlYXIgZnJvbSB5b3UgaW1tZWRp
YXRlbHkgZm9yIGZ1cnRoZXIKaW5mb3JtYXRpb24uCiBLSU5ETFkgUkVQTFkgVE8gVEhJUyBFTUFJ
TCAoYWJkZXJhemFja3plYmRhbmk3QGdtYWlsLmNvbSkKVGhhbmtzIHdpdGggbXkgYmVzdCByZWdh
cmRzLgpNci5BYmRlcmF6YWNrIFplYmRhbmkuCgpUZWxleCBNYW5hZ2VyCkJhbmsgT2YgQWZyaWNh
IChCT0EpCkJ1cmtpbmEgRmFzby4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
