Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35684606881
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Oct 2022 20:56:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 210FA41A10;
	Thu, 20 Oct 2022 18:56:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 210FA41A10
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7_4gl9uMa0Ue; Thu, 20 Oct 2022 18:56:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEFA1419C9;
	Thu, 20 Oct 2022 18:56:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEFA1419C9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F2E311BF2A5
 for <devel@linuxdriverproject.org>; Thu, 20 Oct 2022 18:56:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D959A41A10
 for <devel@linuxdriverproject.org>; Thu, 20 Oct 2022 18:56:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D959A41A10
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rzu0LKmGIfv7 for <devel@linuxdriverproject.org>;
 Thu, 20 Oct 2022 18:56:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 132BC419C9
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com
 [IPv6:2607:f8b0:4864:20::112c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 132BC419C9
 for <devel@linuxdriverproject.org>; Thu, 20 Oct 2022 18:56:18 +0000 (UTC)
Received: by mail-yw1-x112c.google.com with SMTP id
 00721157ae682-3321c2a8d4cso2439997b3.5
 for <devel@linuxdriverproject.org>; Thu, 20 Oct 2022 11:56:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:sender:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qKZQaYvyG0T9Uj1OTzAaNf0j1uBekm8T04WhuHWE0ug=;
 b=Qi3GhuCUra80uSm+4n3+yWPTVvbLhwii7z/9ZjpMGx1Mdv3EBN2ZPvckOskC5OunaC
 T8OYH+U48yzx5EREL4DKXtHht/f5RTR2zPlkLZw/MQVTcWcpSey5vNRtYLprf6jK0YdJ
 ySS8Mm/Wk7dPBy1cE3fXaEhrq63XIX+222ReFTmpkJtf80g9O5Y17EMyl7nWeLr08uvT
 3MSu92/Ga2O5D5huKAw+anVvT1Rm/eHSzyMmY9NC54Jy7JoEV0oUvVaO6KXTqqnPSa43
 hJ7+r1wdOyBotT0xIH8vjTHaxjDCTXL1dPJdC/BRzX1yGpPdd8AKcb0DvCY5aAgy+3ko
 J/jA==
X-Gm-Message-State: ACrzQf2k/aux7gkzMSJkbBxD+fYXnAgnYarK7ouFOs/Yuw715RX/7Y07
 k+C2OWAwlx3cHm2ibbXcS9zzJxBGmpyEgLDjjR8=
X-Google-Smtp-Source: AMsMyM4lNRcBVD909upzEuvyEYhdtIFjZrVQpExAq24vS+9JMAT35EAOhU2EgxMVOL2538w5zq/3tEUX0TcXtK9Rucc=
X-Received: by 2002:a0d:db8b:0:b0:367:9aca:e47f with SMTP id
 d133-20020a0ddb8b000000b003679acae47fmr7096416ywe.400.1666292177795; Thu, 20
 Oct 2022 11:56:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:224f:b0:30b:2c86:372f with HTTP; Thu, 20 Oct 2022
 11:56:16 -0700 (PDT)
From: Anabelle Marie Claude <anabellemarieclaude@gmail.com>
Date: Thu, 20 Oct 2022 19:56:16 +0100
X-Google-Sender-Auth: Rl1a3CgLjBqwNxUi9LuBEb8-eh0
Message-ID: <CADEx5XggDMt4XJ+7yO4Y6EEdjAmYMyVtn7g3M=2FsiSMqwX=YA@mail.gmail.com>
Subject: Hello
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:sender:reply-to:mime-version:from
 :to:cc:subject:date:message-id:reply-to;
 bh=qKZQaYvyG0T9Uj1OTzAaNf0j1uBekm8T04WhuHWE0ug=;
 b=TWj8mFoGdDV5wLOGZBcmn18fryi6dkhScm8djDvkWFisMziwxY0FPgPxFWCxZrtdbe
 11QuiZr0rRcUvYFQFCe8a3KjHEj1TK0uUSAV30A3/op/iLlV0aV+eaQxMPmSPgb0Gr0u
 pjFuFfFh+8LWZ13iHBVuBOrsMU+z235E0Ztmxn+0Ziz2aeMuIO8cTaDYxv/UthmLD3fW
 ymOvFqdjSjP3T57+XZcbJbv339m9bsW5Yu4uDmIQ1iFio5KgVHwK1Wtjyhm6XdGEM0yU
 7zsKoGwYT4SzsJDGzA9nIRlmaneB0f3hUD5wIJeGBkIDPpZ1PeUQlULCtlefwvdOL9kx
 6Jag==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=TWj8mFoG
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
Reply-To: anabellemarieclaude@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good Day,

I will like to disclose something very important to you,
get back to me for more details, please.

Regards.
Mrs Anabelle Marie Claude.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
