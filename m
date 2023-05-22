Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A7970B5A0
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 May 2023 09:01:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82F6040122;
	Mon, 22 May 2023 07:01:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82F6040122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M9kyV_hY5iGt; Mon, 22 May 2023 07:01:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5039740105;
	Mon, 22 May 2023 07:01:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5039740105
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D98F1BF35A
 for <devel@linuxdriverproject.org>; Mon, 22 May 2023 07:00:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 22F2541690
 for <devel@linuxdriverproject.org>; Mon, 22 May 2023 07:00:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22F2541690
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KXAcP4IRQ5QW for <devel@linuxdriverproject.org>;
 Mon, 22 May 2023 07:00:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93A684169E
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 93A684169E
 for <devel@driverdev.osuosl.org>; Mon, 22 May 2023 07:00:56 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id
 38308e7fff4ca-2af31dc49f9so17200501fa.0
 for <devel@driverdev.osuosl.org>; Mon, 22 May 2023 00:00:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684738854; x=1687330854;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8+CEZRZEOJVmAfb07UohKPHalX/8xKQCW3mCwVUhKXY=;
 b=eb1qsGLZELqKYeiJ6erpF/4MpKej1hU5xr9x20y4jWVVHRiRRM5nfOtV8exbSoaD1q
 4h9sBx7jerFyJcDhTKaJLxdJVi22XFgHFvNmioyxZ59WFBiMg++cG2yOKjf1tbNSXj50
 jIcWMf+Jg7RatjSBHq82fZPlHwAqr9iyZiqisJiWaDjt3vacu/LeMsgj06PSViuSEGnr
 8W8+6RD1mMArCqIy9bjsGliV8TP0mPU6huBpnI3XH3Rr/d44ZT5xDNuYBjJTCD3XJmFt
 3Zp91xKobiaeGuR8plvDNDKQ2iW5bhtEm9RYJB7H6hcI93fXKD1LXfxfPvBYNCU83A+9
 0aYg==
X-Gm-Message-State: AC+VfDwiPvIRsXvuz1SLQ/aiqSWLciHdX8ZXwyYpsMFUchYtMe4tNXsO
 Xxuz8ugd2uzikl2rWpwKKlWmfh8YPvW75OWIwvg=
X-Google-Smtp-Source: ACHHUZ7ZonSI2obde8IjIaqrtEHmhhl/pDus1niPtZh2tSxgbRf4B8k60XJ1+oawLJ07Zm01bTZl13TvdGLYUICxJIA=
X-Received: by 2002:a05:6512:25b:b0:4f3:8c0d:41c2 with SMTP id
 b27-20020a056512025b00b004f38c0d41c2mr2589080lfo.54.1684738853952; Mon, 22
 May 2023 00:00:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6022:20a9:b0:3f:19c2:5dd6 with HTTP; Mon, 22 May 2023
 00:00:53 -0700 (PDT)
From: Richard Godwin <williamspater3@gmail.com>
Date: Mon, 22 May 2023 00:00:53 -0700
Message-ID: <CALMa1G7O+Do_24Zpm5HiLdjy-hetnRM8B2WRin4g6hhy8J2=jg@mail.gmail.com>
Subject: URGENT
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684738854; x=1687330854;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8+CEZRZEOJVmAfb07UohKPHalX/8xKQCW3mCwVUhKXY=;
 b=hS6h6qXorpRBJHVbZQA9oHEBO5XM7lfzj/FjBQBpZXIwanY9VIU15JEZmJWrfCghTC
 3+y0GVma3OKp2QFA1aDYkCpt07kdC2mbsdG2V/rzdy9Ep21rTsGMugJq6QiPGxqa2lFC
 Jjv2Wox8RdvlB6dCjUHzdeO68prw4fw5oGpP1GAncVEavSS8hOt1D34ta50DKjmIurtY
 cmncyWRpF1KSHUrYENx+abaZIeXPq4jw5nMrzdAbqTQ0h5GKVQ/E6f7TxmCPSh+ejRSJ
 LTWiVwh6bthkmZycC4uNLQJD4y8rPJdG7UF9fRc39QXyRQsVkNSStUhp21g0tifyIETO
 d7Fg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=hS6h6qXo
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
Reply-To: godwinrichard700@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello Dear Good Day,

I hope you are doing great,

I have something important to discuss with you

if you give me a listening ear.so that I can

write you in details thank you as i wait for

your reply.

Mr Richard Godwin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
