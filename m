Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D6E5817C7
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jul 2022 18:46:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A944A40612;
	Tue, 26 Jul 2022 16:46:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A944A40612
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MvblRT7aOXUd; Tue, 26 Jul 2022 16:46:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 519E24014B;
	Tue, 26 Jul 2022 16:46:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 519E24014B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06A6E1BF3D9
 for <devel@linuxdriverproject.org>; Tue, 26 Jul 2022 16:45:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D09E5422C0
 for <devel@linuxdriverproject.org>; Tue, 26 Jul 2022 16:45:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D09E5422C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zYx4WDtt6cUg for <devel@linuxdriverproject.org>;
 Tue, 26 Jul 2022 16:45:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9F41422BC
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9F41422BC
 for <devel@linuxdriverproject.org>; Tue, 26 Jul 2022 16:45:56 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id sz17so27239357ejc.9
 for <devel@linuxdriverproject.org>; Tue, 26 Jul 2022 09:45:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=9xhRZcPap3oFXBPkrX25Y6GEPrtISQ8gKvxRuObGRsM=;
 b=OwpnjVG3gZMeY0yH3g2kJ3QVK4m5JwIu//jT167Ae2gAfkI7/gbwOrfD736zWYvEhn
 5+/FrNEteIEkuDqI463uiy3YGLGujoGfdOXoEYysdaLDpv0WGiwsnHLHETD9XpdnzRCN
 SDQgMTC4UddemX/3tnbEnNoBHQQLB2DRF9HYIjRFouvZbclsJP4sO3Wc4xBfbu+Jmo4i
 LGXQFr39a6joYrUDPEivcQGxv3dUvyaEy//CRHJaAT2ndUueSwngyBTNDhUNaepunE7e
 iinNYguAriOG5TbRG8Lh3urtkpismSn4toqdNOTzsUAGWFiU2YjR+JqgJsM+Wm0y0i7o
 W29w==
X-Gm-Message-State: AJIora8JscYTjpMZw/XMhW5o+IzbqVAeunYBet8LCWH/wgOwIa4mw7r4
 7oqBPUSeoreI3vR0EEmek47DhjnbRso67Jql7D8=
X-Google-Smtp-Source: AGRyM1uA02i7f4hOrLkrFqMa8ZYl5Vi9EbYNTXSr1X+c51zFJK4ge1C46b3ks3/VwhLrHzqMkoQLX0wqIeTFJOZsowY=
X-Received: by 2002:a17:906:8a4d:b0:72b:6b8d:3779 with SMTP id
 gx13-20020a1709068a4d00b0072b6b8d3779mr15114833ejc.759.1658853954811; Tue, 26
 Jul 2022 09:45:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6f02:6163:b0:20:844c:bdcd with HTTP; Tue, 26 Jul 2022
 09:45:54 -0700 (PDT)
From: Mimi Esther <chiweozo1@gmail.com>
Date: Tue, 26 Jul 2022 16:45:54 +0000
Message-ID: <CANyiuRbOVAnvftfEM3KVxBmD2CLm-EWtSTwGFt-tYzd7UTXTOw@mail.gmail.com>
Subject: Dear Winner
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=9xhRZcPap3oFXBPkrX25Y6GEPrtISQ8gKvxRuObGRsM=;
 b=nSkFvcsY6173gJsfpcJE9oPU4kFTqo8DMZXVWVCIU6cV99Jc0DUY7B6svbZH9ls50s
 IIriL5MaSPITbc4AHh4NU/YJ181669NJ1MjSC74AjzeQrjNXqdrL/5KDoRW75wTvB+Kr
 7RquBDrdTOlEOS3CX4oBv7rR2PCJz/GxRvwKduZePn93DdmRtunGoU8BNWV6S/aJBNVY
 ebhB/a6isihql/8lDj/q7MO7Yyy105eGWIBtX11dIstQhJwk+1dyebVt0f80cNzQDfyC
 F39ctRRH3a0CFWTVAumvZdKnPxFD0iQ77JHzC7tuywP9O8u/xbFRDBvmKCdhj6Rz1xQG
 Ao7Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=nSkFvcsY
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
Reply-To: DHL-deliverycompany@europe.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciB3aW5uZXIsIHlvdXIgZW1haWwgaGFzIGJlZW4gc2VsZWN0ZWQgYXMKd2lubmVyIG9mIHRo
ZSByZWNlbnQgTWVnYSBNaWxsaW9ucyBkcmF3OyB5b3VyIGVtYWlsIGFkZHJlc3Mgd2FzCnF1YWxp
ZmllZCBmb3IgYSByYWZmbGUgZHJhdyBhcyBhIHJlc3VsdCBvZiB5b3VyIHJlZ3VsYXIgdmlzaXRz
IHRvCnZhcmlvdXMgd2Vic2l0ZXMgb24gdGhlIEludGVybmV0LCB0aGUgY29tcGFueSBhZGRyZXNz
IGF0dGFjaGVkIHRvIHRoZQpudW1iZXIuClNlZSB0aGUgUmVzdWx0cyBhbmQgeW91ciB3aW5uaW5n
IG51bWJlcnMgd2l0aCBzZXJpYWwgbnVtYmVyIGFuZCBUaWVyOgoyLCBNYXRjaDogNSBOdW1iZXJz
LCBXaW5uZXJzOiAweCwgeW91ciB3aW5uaW5nIEFtb3VudCBpczoKKMKjODIxLDA3Ny43NykgdGhp
cyBpcyB0aGUgc2l0ZSB0aGF0IHlvdSBjYW4gY2hlY2sgaXQgZm9yIHlvdXJzZWxmIHRoYXQKeW91
IGhhdmUgd29uIGluIHRoZSBzZWNvbmQgY2F0ZWdvcnkgT05MSU5FIEZPUiBNZWdhIE1pbGxpb25z
IExPVFRPCkRSQVcsIChodHRwczovL3d3dy5sb3R0b2xhbmQuY28udWsvbWVnYW1pbGxpb25zL3Jl
c3VsdHMtd2lubmluZy1udW1iZXJzKS4KQ29udGFjdCBESEwgRGVsaXZlcnkgQ29tcGFueSB0byBk
ZWxpdmVyIHlvdXIgd2lubmluZyBmdW5kIHRvIHlvdXIKbm9taW5hdGVkIGhvbWUgYWRkcmVzcywg
cmVtZW1iZXIgdG8gc3VibWl0IHlvdXIgaW5mb3JtYXRpb24gdG8gREhMCkNvbXBhbnkgdmlhCgoo
REhMLWRlbGl2ZXJ5Y29tcGFueUBldXJvcGUuY29tICkKClNpZ24KCk1pbWkgRXN0aGVyLgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
