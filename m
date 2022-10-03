Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 446625F380F
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Oct 2022 23:48:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06C69408C9;
	Mon,  3 Oct 2022 21:47:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06C69408C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FSlvQBbdI46T; Mon,  3 Oct 2022 21:47:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA8DE408AF;
	Mon,  3 Oct 2022 21:47:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA8DE408AF
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED9C11BF2B1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Oct 2022 21:47:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C899082E5F
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Oct 2022 21:47:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C899082E5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kXCdcElq8lyj
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Oct 2022 21:47:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16495829B6
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 16495829B6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Oct 2022 21:47:54 +0000 (UTC)
Received: by mail-oi1-x244.google.com with SMTP id u68so2414907oie.10
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 03 Oct 2022 14:47:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=2OQWN8hj1a3rNmFV+plBxGz9ZHcPCNo47Xuw81WwseY=;
 b=ovXdzxOT0/bsyLwSiIilKJH01sWeft/h8EemarRvdNPxCJTrLl6rq3KSDDETtQ3p58
 HyuUu9r/mlhM5kpPd/WDFiAT3nvJfTLTdZQT+BZxX57HWnKs1+SxiC/rtQUbZnwDuXW+
 i4naPR/cGmqmQVB5fzBo5mfgPgJC5FI8vo+UJzSm/08PwR9xf7B6OUOcHoP7HvD3oP+7
 pn/ytG8MZJyNJi8uJTQSwG61gPuqOAk4EZ1CL5sA9PbsPoWqBt+VOogXJi8Dj0p77tYU
 b2IN/GY1yvx0unSQKRq9PpnPFZlT/9ZeFJX4rQ0fuTtehpGGu4F1sTUhTrD/UGBzfypo
 t2fw==
X-Gm-Message-State: ACrzQf3OoII0BUtNCscmHWxfex6lcdrkz20ZssgIwJi/qO5CGQucX6Pf
 O1QLuLAzYKny1QDI1elr4TcTvzOYpMHiVskwO44=
X-Google-Smtp-Source: AMsMyM74lSj7QkSeDJLHmi2RUqz0qkfYmcZDH3MoWunRDljYEHJvn4rSIGIJTmxB342yorPTytug2jiOmNZ27Hntr7Y=
X-Received: by 2002:a05:6808:150c:b0:350:df64:edf6 with SMTP id
 u12-20020a056808150c00b00350df64edf6mr4776569oiw.283.1664833673101; Mon, 03
 Oct 2022 14:47:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:c17:b0:c9:71d3:bbb6 with HTTP; Mon, 3 Oct 2022
 14:47:52 -0700 (PDT)
From: "Charles W. Jackson" <jamescarey67654@gmail.com>
Date: Mon, 3 Oct 2022 23:47:52 +0200
Message-ID: <CAP6aGso0t2jjWueYTsfwQivnbOhgrpXGLUSePuo4JJECf9x9NQ@mail.gmail.com>
Subject: Hallo, ich bin Karl W.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date;
 bh=2OQWN8hj1a3rNmFV+plBxGz9ZHcPCNo47Xuw81WwseY=;
 b=KlFwRHjnaNFakQAZEsRASEQmDAgzn2tTs7pbo5xIlIHCT3SAhrcd3U9OfXkNMFRF+q
 35IpL/59ggugcVv7MP3PBStQy1HasK4Rdu94VXR5Q81oitQa5SFYcusL0u41Fl5TlYBf
 E6vygA+MAdGY/5lNT3Y9FViWW97dgGz7jL8vPkUT2rGefdo/aXpHK5+ImueURA5yBVb0
 fZ2iI1L72eFIDy5o8DgeJoDI3DI6RTPbBP3SZR0hsURF0+BJa6onGd0xScfyD5mY7ZdP
 VOLABLF4JQX3+VxlLivBN9PxH1bXwedcsxsqvwl8NknGIQ9HkkOsu3J1Pes5dhV72YgU
 t/wg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=KlFwRHjn
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
Reply-To: c.wjacksonjr@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkhhbGxvLCBpY2ggYmluIENoYXJsZXMgVy4gSmFja3NvbiBKci4sIFNpZSBoYWJlbiBlaW5l
IFNwZW5kZSBpbiBIw7ZoZQp2b24gMS45MDAuMDAwIFVTRC4gSWNoIGhhYmUgYW0gNC4gSnVuaSAy
MDE5IGRpZQozNDQtTWlsbGlvbmVuLURvbGxhci1Qb3dlcmJhbGwtTG90dGVyaWUgZ2V3b25uZW4g
dW5kIG1pY2ggZW50c2NoaWVkZW4sCmVpbmVuIFRlaWwgZGF2b24gYW4gZsO8bmYgZ2zDvGNrbGlj
aGUgTWVuc2NoZW4gdW5kCldvaGx0w6R0aWdrZWl0c29yZ2FuaXNhdGlvbmVuIHp1IHNwZW5kZW4u
IElocmUgRS1NYWlsIGdpbmcgdW50ZXIgZGVuCmdsw7xja2xpY2hlbiBGw7xuZiBhbHMgU2llZ2Vy
IGhlcnZvci4gS29udGFrdGllcmVuIFNpZSBtaWNoIGRyaW5nZW5kIGbDvHIKZWluZSBSZWtsYW1h
dGlvbi4gSGllciBpc3QgZGFzIFlvdVR1YmUtVmlkZW8KaHR0cHM6Ly93d3cueW91dHViZS5jb20v
d2F0Y2g/dj0wTVVSOFFFSU1RSQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
