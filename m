Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04ECA4C5519
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Feb 2022 11:12:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B0E64098F;
	Sat, 26 Feb 2022 10:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oUVRlAwdHYLw; Sat, 26 Feb 2022 10:12:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0548340948;
	Sat, 26 Feb 2022 10:12:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 646491BF484
 for <devel@linuxdriverproject.org>; Sat, 26 Feb 2022 10:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 532984098F
 for <devel@linuxdriverproject.org>; Sat, 26 Feb 2022 10:12:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R6m17xzU6OTm for <devel@linuxdriverproject.org>;
 Sat, 26 Feb 2022 10:12:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B683140948
 for <devel@driverdev.osuosl.org>; Sat, 26 Feb 2022 10:12:37 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id h13so8581495qvk.12
 for <devel@driverdev.osuosl.org>; Sat, 26 Feb 2022 02:12:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=vFTjJiHGJM/FRxpTUAc+ZEjBxdNeuAkjjy0Iu6vBYo8=;
 b=Yk5iCZdY9fDOpfP/09XgzrmsYfYl0pmB+QSFA/BQidWSFlpaLsUbjYTEdtoTAojyiY
 uRCAJltndPqGvHYIsQcP7obgtnHvVumBKIsV+FDnzCTuzrDa6YpaLYuXaYazQ7+Bb9kS
 z9NCekei69IbilTaZIXb745z1Zkjwh+GuunConFx0xf6n7tnjZLvZFELB91IiQPgaebt
 v0cs7MgFqDFV2OMMINGo3H+O71ibHUSlZr0hlfdMoiDKsK6cFqp2C3WLy46fRVk8+xOo
 ZYZmJ56P30ImlsM+2Kbkgv0O/25ybXDFfTvzaLbq1G30el2IbFMZkSSBEdLvuJ5OpbQV
 GghQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=vFTjJiHGJM/FRxpTUAc+ZEjBxdNeuAkjjy0Iu6vBYo8=;
 b=tEh4UxUtvk0+s2LF2Hm2JONeyudUsDMKjfe7ZxpJxqsEb3bJZAwdGJeiDjpdSNdjta
 MTSO6KatljD+hIbGh6BXmw6zni7MhLOLa81Sa9LvaYfiPeXKTzJ87GrYjss54Zjmh7FG
 o9ftIMCO+csN5VDXIZjz4Z+CQQvhSiFDKDL9Ca+ma3eCieFVoJjcrDLNpO7RnixQvnpL
 8Al0ZRbJ/bVsBnJlHgXAPTdJXO1M86Ow4ZJLv5VpXimWKqGv0ow1B1a+i2qxJXlyaWNG
 /OMdJK+p3i01+9oQqKf8UQJVjcLuArGwPEINHAX+4cawgtMarUbtj7pgbtK84vo0o72U
 GEng==
X-Gm-Message-State: AOAM531jxQqPuEQHFiutvxtT9FOk9YijZEVnpV17zWRzUw0+pVy7WxuM
 uIQgEotLlvSdJQOeuo+q3t0waohl0f4jd1twIQo=
X-Google-Smtp-Source: ABdhPJwEcxDMyNWquDuSyvTR2vH0SZ0izw0LXcPeEPI2QDpcwh6GCnARnxhpVA1yap7CGNbceerZ+kuxTHWuyuGbuuM=
X-Received: by 2002:a05:6214:487:b0:432:3903:b4c5 with SMTP id
 ay7-20020a056214048700b004323903b4c5mr8728519qvb.22.1645870355830; Sat, 26
 Feb 2022 02:12:35 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:ee42:0:0:0:0:0 with HTTP; Sat, 26 Feb 2022 02:12:35
 -0800 (PST)
From: Ministere Desfinances <ministeredesfinances405@gmail.com>
Date: Sat, 26 Feb 2022 02:12:35 -0800
X-Google-Sender-Auth: OS4S1T_4DcMKtLOBKHriyp0ujs4
Message-ID: <CAGoqFBQxp=J7AAOyiTARvMUr8r0M7w2ng8+rqpPAM2-qHzGcug@mail.gmail.com>
Subject: 
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

QXR0ZW50aW9uIERlYXIgQmVuZWZpY2lhbGx5CgoKTmF0aW9ucyAoVU4pLCBFdXJvcGVhbiBVbmlv
biAoRVUpIGFuZCBGQkkuV2UgaGF2ZSBiZWVuIGFibGUgdG8gdHJhY2sKZG93bi4gSW5mb3JtYXRp
b24gZnJvbSBOYXRpb25zIChVTiksIEV1cm9wZWFuIFVuaW9uIChFVSkgYW5kIEZCSS5XZQpoYXZl
IGJlZW4gYWJsZSB0byB0cmFjayBkb3duIHNvbWUgc2NhbSBhcnRpc3QgaW4gdmFyaW91cyBwYXJ0
cyBvZgpBZnJpY2FuIGNvdW50cmllcyB3aGljaCBpbmNsdWRlcyAoTmlnZXJpYSwgR2hhbmEgYW5k
IFNlbmVnYWwsIGNvdGUKZCdpdm9pcmUgQ290b25vdS1CdXJraW5hIEZhc28sIFNvdXRoIEtvcmVh
IGFuZCBDaGluYSAtIEJ1cmtpbmEgRmFzbykKCgoKVGhleSBhcmUgYWxsIGluIEdvdmVybm1lbnQg
Y3VzdG9keSBub3csIHRoZXkgd2lsbCBhcHBlYXIgYXQgdGhlCkludGVybmF0aW9uYWwgQ3JpbWlu
YWwgQ291cnQgKElDQykgc29vbiBmb3IgSnVzdGljZS4gRHVyaW5nIHRoZSBjb3Vyc2UKb2YgaW52
ZXN0aWdhdGlvbiwgdGhleSB3ZXJlIGFibGUgdG8gcmVjb3ZlciBzb21lIGZ1bmRzIGZyb20gdGhl
c2Ugc2NhbQphcnRpc3RzIGFuZCB0aGUgSU1GIG9yZ2FuaXphdGlvbiBoYXMgb3JkZXJlZCB0aGUg
ZnVuZHMgcmVjb3ZlcmVkIHRvIGJlCnNoYXJlZCBhbW9uZyB0aGUgMTAwIEx1Y2t5IHBlb3BsZSBs
aXN0ZWQgYXJvdW5kIHRoZSBXb3JsZCBhcyBhCmNvbXBlbnNhdGlvbi4KCgoKVGhpcyBub3RpY2Ug
aGFzIGJlZW4gZGlyZWN0ZWQgdG8geW91IGJlY2F1c2UgeW91ciBlbWFpbCBhZGRyZXNzIHdhcwpm
b3VuZCBpbiBvbmUgb2YgdGhlIHNjYW0gQXJ0aXN0cyBmaWxlIGFuZCBjb21wdXRlciBoYXJkLWRp
c2sgZHVyaW5nCnRoZSBpbnZlc3RpZ2F0aW9uLCBtYXliZSB5b3UgaGF2ZSBiZWVuIHNjYW1tZWQu
CgoKCllvdSBhcmUgdGhlcmVmb3JlIGJlaW5nIGNvbXBlbnNhdGVkIHdpdGggYSBzdW0gb2YgJCAy
LjIgTWlsbGlvbiBVUwpEb2xsYXJzIHZhbGlkIGludG8gYW4gKEFUTSBWaXNhIENhcmQpLiBFdmVu
IGlmIHlvdSBhcmUgbm93IGRlYWxpbmcKd2l0aCB0aGVzZSBub25vZmZpY2lhbCBkaXJlY3RvcnMg
b2YgdGhlIGJhbmsgb3IgYW55IGRlcGFydG1lbnQgYWx3YXlzCnJlcXVlc3RpbmcgbW9uZXkgZnJv
bSB5b3UsIHlvdSBzaG91bGQgU1RPUCB5b3VyIGNvbW11bmljYXRpb24gd2l0aAp0aGVtIGFuZCBm
b3J3YXJkIHRoZSBkZXRhaWxzIHRvIG91ciBvZmZpY2Ugc28gdGhhdCB3ZSB3aWxsIGhlbHAgYW5k
CnJlY292ZXIgeW91ciBmdW5kcyBwZWFjZWZ1bGx5IGFuZCBpbGxlZ2FsbHkuCgoKClNpbmNlIHlv
dXIgZW1haWwgYWRkcmVzcyBpcyBhbW9uZyB0aGUgbHVja3kgYmVuZWZpY2lhcmllcyB3aG8gd2ls
bApyZWNlaXZlIGEgY29tcGVuc2F0aW9uIGZ1bmRzLCB3ZSBoYXZlIGFycmFuZ2VkIHlvdXIgcGF5
bWVudCB0byBiZSBwYWlkCnRvIHlvdSB0aHJvdWdoIEFUTSBWSVNBIENBUkQgYW5kIGRlbGl2ZXIg
dG8geW91ciBwb3N0YWwgYWRkcmVzcywgYXMgdG8KZW5hYmxlIHlvdSB3aXRoZHJhd2FsIG1heGlt
dW0gb2YgJDQsMDAwIG9uIGVhY2ggd2l0aGRyYXdhbCBmcm9tIGFueQpCYW5rIEFUTSBNYWNoaW5l
IG9mIHlvdXIgY2hvaWNlLCB1bnRpbCBhbGwgdGhlIGZ1bmRzIGFyZSBleGhhdXN0ZWQuCgoKClRo
ZSBwYWNrYWdlIGlzIGNvbWluZyBmcm9tIE91YWdhZG91Z291LCBCdXJraW5hIEZhc28uIERvbuKA
mXQgZm9yZ2V0IHRvCnJlY29uZmlybSB5b3VyIGZvbGxvd2luZyBpbmZvcm1hdGlvbi4KCgoKMS4g
WW91ciBGdWxsIE5hbWU6CgoyLiBBZGRyZXNzIFdoZXJlIFlvdSB3YW50IHVzIHRvIFNlbmQgWW91
ciBBVE0gQ2FyZAoKMy4gQ2VsbC9Nb2JpbGUgTnVtYmVyCgo0LiBDb3B5IG9mIHlvdXIgcGFzc3Bv
cnQKCgoKCgpZb3VycyBpbiBTZXJ2aWNlcwoKTXIuIEplYW4gTGF1cmVudCBCb25uYWZlCgpNSU5J
U1RFUkUgREVTIEZJTkFOQ0VTCgpFVCBERSBM4oCZRUNPTk9NSUUgKE0uRi5FKQoKQlVSS0lOQSBG
QVNPCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
