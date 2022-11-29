Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6542363C90F
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Nov 2022 21:14:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA74660BB6;
	Tue, 29 Nov 2022 20:14:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA74660BB6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BqKZBmBfLt8F; Tue, 29 Nov 2022 20:14:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8352C60FE7;
	Tue, 29 Nov 2022 20:14:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8352C60FE7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D8321BF2C1
 for <devel@linuxdriverproject.org>; Tue, 29 Nov 2022 20:14:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0477441714
 for <devel@linuxdriverproject.org>; Tue, 29 Nov 2022 20:14:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0477441714
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vad-uVAPoh_X for <devel@linuxdriverproject.org>;
 Tue, 29 Nov 2022 20:14:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 365B341719
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 365B341719
 for <devel@driverdev.osuosl.org>; Tue, 29 Nov 2022 20:14:17 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id b3so23791931lfv.2
 for <devel@driverdev.osuosl.org>; Tue, 29 Nov 2022 12:14:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
 b=Asi0t/HzWapBJDTEncpjVk9MWV2dMNkpLfOGD3L0nE09O/ASacc+7lEsktJeX47jwW
 7C/jk/bulUfpqys3ikbDp110ubn0MDGJkXmB9aw/9Qf8tmEYHZbL37UmgCr4KQ6jtJig
 T8MvDNCHvteDL2T0KANXwhD5azozbiY3XdQRNOl6pr9r+UwpQqptbNItTjaFGxQKwEKG
 E/zpLyQXw2BcdhXCOMIK9GAOuuYmXBVC4UL7lja+vGfuMCjDIN6g1UHclTXl9DNsXga1
 Z2EdZ/Vn6PxZIjZ1hvmTFZuHV1y89kjQzNvf8rv+wV6eOvaMZN3XKa4dFtCfToQboSzf
 GcbQ==
X-Gm-Message-State: ANoB5pnCNwY7YbW4FCLlQDu6ofIdrLzsbsS2dxdjKlye4dmA5u3j+Ayh
 6XDA9As4TF5BWoXK7VvgsVWj1LuETE5zQ8Fz7Qs=
X-Google-Smtp-Source: AA0mqf5MkEtP68sAjTWqPDjWHlmbHx0oZPBs1GOULJHj5yvzqfGFs2GWPeIvbFfMswjNArzOij7r1a59keON6idTKAs=
X-Received: by 2002:a05:6512:3f29:b0:4b4:af05:4a8d with SMTP id
 y41-20020a0565123f2900b004b4af054a8dmr18817878lfa.415.1669752854704; Tue, 29
 Nov 2022 12:14:14 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6520:2542:b0:22c:9bbc:bff with HTTP; Tue, 29 Nov 2022
 12:14:13 -0800 (PST)
From: "Mr.Abraham" <joykekeli2@gmail.com>
Date: Tue, 29 Nov 2022 20:14:13 +0000
Message-ID: <CAOikvbun8RwBTrhuZTDHqYLYXD0326TAJK0ihB--F=5oJwDdKA@mail.gmail.com>
Subject: hi
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
 b=dbvoV/2UymB+9y9pPTNqu+wQ7kisfwrl8awq3wA+TZ7yU6HNdAr/bUtjizngt7qKYr
 Ab2IDj3vC883FSIySpCqD7DpyTq2J796sg7zhj2vW2JZtkspFO1XYu6o982hmMTUjWWP
 0Qpy7f3RbRAlQJTV6MSsiZVlSMajpJqWcbhOFEcZ5h3PfsYrTOHexJfUoLeguO5xL1ws
 Suv5eQ7z5KhKgHx6IsOvqjunfRKOWfbU4OSNNQUdyvgXaeIYcLVrM3NMXYU+8xBw5KSK
 ITGb+r+SME5vtyyMHjbphx+LFAj+VM+Dnsltu55Opf54ndhmnrHnh2C6EIKl6aHkIuzy
 CkJg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=dbvoV/2U
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
Reply-To: mr.abraham022@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My Greeting, Did you receive the letter i sent to you. Please answer me.
Regard, Mr.Abraham
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
