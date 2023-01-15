Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 915A466B051
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Jan 2023 11:24:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34D6940990;
	Sun, 15 Jan 2023 10:24:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34D6940990
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HS1tiXGSfK67; Sun, 15 Jan 2023 10:24:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D065340951;
	Sun, 15 Jan 2023 10:24:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D065340951
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B55E1BF4D6
 for <devel@linuxdriverproject.org>; Sun, 15 Jan 2023 10:24:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C5DC40990
 for <devel@linuxdriverproject.org>; Sun, 15 Jan 2023 10:24:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C5DC40990
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RGZrF8xfpNuv for <devel@linuxdriverproject.org>;
 Sun, 15 Jan 2023 10:24:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5E4B40951
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com
 [IPv6:2607:f8b0:4864:20::b33])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A5E4B40951
 for <devel@driverdev.osuosl.org>; Sun, 15 Jan 2023 10:24:22 +0000 (UTC)
Received: by mail-yb1-xb33.google.com with SMTP id 188so27227467ybi.9
 for <devel@driverdev.osuosl.org>; Sun, 15 Jan 2023 02:24:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=yVA+bfTpjRSsvbVzKLVIX2vGQnpB6+SAaeup5CYFzU4=;
 b=LyGgN9yb+jLSxmJcAI/TN6Jvc/KKzAU4CPf6kjJcMQQys9NOsgGlKq+6fvbyTFnsNs
 oZpiGo5iZ9oY0nLCv/9woawc2wWp3sQ8NVZmQOWn9kJNegyMeo07CepbJyAKeNSyBGuF
 VydkNYR3QwdW2KLxliEINeJdc14SUYSi7YgW5GgdnD4N9T6eAhsv6YsITj7700ZtVJ5S
 LLzipoeIa9MMj3CRQpk665REQMIqcTGWlZ6Zhn2VuWMxtyOKnAAxYY28uNd8HkltEKgZ
 gyShsgOx/zBZ1frylp1679S29pat5O4mZOk++pfltnweWojv22uuAf14sJ+/jKfVyudQ
 7tCg==
X-Gm-Message-State: AFqh2kqUXl86XXWVTzvS+ZRduDp5UI5ufww35mV5tzVdDnDNQ8g+sqDT
 Ttj/ai2C6vRwmzSI9g3ursFxSjcQSDwLvzpr4co=
X-Google-Smtp-Source: AMrXdXt+KFMYj+qpkHOJkjhVed/wlquM1xNTBLzjpZMpj7zBVBCeYe7TkH/Rf6NjuAnp3LrjjIPb5JTb0tYTFSL6SUw=
X-Received: by 2002:a25:eb10:0:b0:732:8da3:8fc3 with SMTP id
 d16-20020a25eb10000000b007328da38fc3mr6863473ybs.600.1673778261519; Sun, 15
 Jan 2023 02:24:21 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:4981:b0:321:13ff:d883 with HTTP; Sun, 15 Jan 2023
 02:24:21 -0800 (PST)
From: "Mrs. Elizabeth" <bellakelf7@gmail.com>
Date: Sun, 15 Jan 2023 02:24:21 -0800
Message-ID: <CA+Sz8qL0PD9=mb5Z=TbFAZhsPhyvYkWQxmjq56s-BCvMpqxDQg@mail.gmail.com>
Subject: Mrs. Elizabeth Edward.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=yVA+bfTpjRSsvbVzKLVIX2vGQnpB6+SAaeup5CYFzU4=;
 b=EBGz0uNLkLRDq5UkrKKEEXbkM7OU5I+5zjWjIxKJSUb4gVldNhBhT0/CUm8IpVrWNw
 E5pDRoAOsQbKngkkhtZX23bXUPFcD/Faklf4VhdNuTqg2Pk57kgSULrCOrWZrky8ZWob
 12eNslINQOh/ZQ01XkguDOheL6xpS2PjJsxKwxbrt2J7SO66EeQ2SeCleJyBOIn6ybS3
 eqOLf6jmP9iI69XA17mbGyjvjqMW3HyyQBdDhBPJIajptNZPhhGN6kBXD11nU7aJbmJ4
 wWz8yAe12xbFoBEJSd3DloKGe0QrhBzVIHnwBEP4npmdfQImtNEWB5+k0e7kCdegCeGf
 KDNQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=EBGz0uNL
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
Reply-To: mrselizabethedward46@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TXkgRGVhciBGcmllbmQsCgpQbGVhc2UgZm9yZ2l2ZSBtZSBmb3Igc3RyZXNzaW5nIHlvdSB3aXRo
IG15IHByZWRpY2FtZW50cyBhbmQgYW0gc29ycnkKdG8gYXBwcm9hY2ggeW91IHRocm91Z2ggdGhp
cyBtZWRpYSwgaXQgaXMgYmVjYXVzZSBpdCBzZXJ2ZXMgdGhlCmZhc3Rlc3QgbWVhbnMgb2YgY29t
bXVuaWNhdGlvbi4gSSBjYW1lIGFjcm9zcyB5b3VyIEUtbWFpbCBmcm9tIG15CnBlcnNvbmFsIHNl
YXJjaCBhbmQgSSBkZWNpZGVkIHRvIGNvbnRhY3QgeW91IGJlbGlldmluZyB5b3Ugd2lsbCBiZQpo
b25lc3QgdG8gZnVsZmlsbCBteSBmaW5hbCB3aXNoIGJlZm9yZSBJIGRpZS4KCkkgYW0gTXJzLiBF
bGl6YWJldGggRWR3YXJkLCA2MyB5ZWFycywgZnJvbSBVU0EsIEkgYW0gY2hpbGRsZXNzIGFuZCBJ
CmFtIHN1ZmZlcmluZyBmcm9tIGEgcHJvLWxvbmcgY3JpdGljYWwgY2FuY2VyLCBteSBkb2N0b3Jz
IGNvbmZpcm1lZCBJCm1heSBub3QgbGl2ZSBiZXlvbmQgdHdvIG1vbnRocyBmcm9tIG5vdyBhcyBt
eSBpbGwgaGVhbHRoIGhhcyBkZWZpbGUKYWxsIGZvcm1zIG9mIG1lZGljYWwgdHJlYXRtZW50LgoK
U2luY2UgbXkgZGF5cyBhcmUgbnVtYmVyZWQsIEnigJl2ZSBkZWNpZGVkLCB3aWxsaW5nbHkgdG8g
ZnVsZmlsbCBteQpsb25nLXRpbWUgcHJvbWlzZSB0byBkb25hdGUgeW91IHRoZSBzdW0gKCQ1LjAw
MC4wMDAuMDApIG1pbGxpb24KZG9sbGFycyBJIG5oZXJpdGVkIGZyb20gbXkgbGF0ZSBodXNiYW5k
IE1yLiBFZHdhcmQgSGVyYmFydCwgZm9yZWlnbgpiYW5rIGFjY291bnQgb3ZlciB5ZWFycy4gSSBu
ZWVkIGEgdmVyeSBob25lc3QgcGVyc29uIHdobyBjYW4gYXNzaXN0IGluCnRyYW5zZmVyIG9mIHRo
aXMgbW9uZXkgdG8gaGlzIG9yIGhlciBhY2NvdW50IGFuZCB1c2UgdGhlIGZ1bmRzIGZvcgpjaGFy
aXRpZXMgd29yayBvZiBHb2Qgd2hpbGUgeW91IHVzZSA1MCUgZm9yIHlvdXJzZWxmLiBJIHdhbnQg
eW91IHRvCmtub3cgdGhlcmUgYXJlIG5vIHJpc2tzIGludm9sdmVkOyBpdCBpcyAxMDAlIGhpdGNo
IGZyZWUgJiBzYWZlLiBJZiB5b3UKd2lsbCBiZSBpbnRlcmVzdGluZyB0byBhc3Npc3QgaW4gZ2V0
dGluZyB0aGlzIGZ1bmQgaW50byB5b3VyIGFjY291bnQKZm9yIGNoYXJpdHkgcHJvamVjdCB0byBm
dWxmaWxsIG15IHByb21pc2UgYmVmb3JlIEkgZGllIHBsZWFzZSBsZXQgbWUKa25vdyBpbW1lZGlh
dGVseS4gSSB3aWxsIGFwcHJlY2lhdGUgeW91ciB1dG1vc3QgY29uZmlkZW50aWFsaXR5IGFzIEkK
d2FpdCBmb3IgeW91ciByZXBseS4KCkJlc3QgUmVnYXJkcwoKTXJzLiBFbGl6YWJldGggRWR3YXJk
LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
