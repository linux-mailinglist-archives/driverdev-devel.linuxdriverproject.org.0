Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D9B49F0F6
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jan 2022 03:29:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AF548341E;
	Fri, 28 Jan 2022 02:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxYQy2XBkOwv; Fri, 28 Jan 2022 02:29:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5FD88343B;
	Fri, 28 Jan 2022 02:29:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 333AF1BF2B3
 for <devel@linuxdriverproject.org>; Fri, 28 Jan 2022 02:28:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1ADA681495
 for <devel@linuxdriverproject.org>; Fri, 28 Jan 2022 02:28:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mbTsYGMiOHlF for <devel@linuxdriverproject.org>;
 Fri, 28 Jan 2022 02:28:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 45B2B8144D
 for <devel@driverdev.osuosl.org>; Fri, 28 Jan 2022 02:28:56 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id p15so10959665ejc.7
 for <devel@driverdev.osuosl.org>; Thu, 27 Jan 2022 18:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=16SejWaddN5elghTmeHnExoVbYnHRduusQDg4zcIJJA=;
 b=OLWD5Vhsy9y8d+PdzXpwCYwPUmq7igKT9WLvrQJKlJcc9ssXjEyuQ76gf/6DHoyqmg
 jb894QG7ehD+4wfVW+XSVQ0ZsO5aw3USNe356jA9FVC1IVlWcAAvLGXvrggsig1FdZrr
 oO7vqae72G9McaMGToTDhalsrVgVbwXlySZQHPYvsFXfpAAKpI0tYybbGvhal+qbj4RX
 Z1JyTlJzNgjP0DJHLw05TIUyEm/+PLtQ02V0VZE3DSymjIYWj43dF4LFX3JzrQfGKQyw
 OAbaUDqWo3e4k2t7IPfHXbzQC0+H5LncuennzcCVrxkomyzDuRSyemyNGOD1F3T7016X
 WPpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=16SejWaddN5elghTmeHnExoVbYnHRduusQDg4zcIJJA=;
 b=3maFIsvJCd0S4zom7X8Uo3rTFZ0qTMRUdbjrKnn4HOdiD++wxPNC954vVIH8MiuGBm
 bCrpUAMEOZE8FdHa0xpcI6xXM8kam/l1WL5kbtGej82YUW38U67GEKLfQlBoJi2mb2bR
 glsC2AxVKIZlMw873fHrAYaF0hFSiMRYGJlJS9wocW2HgSEMGbNzehZ68pHt9QCEmi5F
 Sa7xnAsQY2Ae753A+NN5kxEMkp6jKzfSOpsH1pDutI0wqLXaxZRao07sInrV0D7g2Kjq
 nm1EVsX/JzUJBnvWaLmKNaxJB6dtzDbfd2j/u9+/HSwFZ7G/ilyTOYf+BL4RS+vb2BuH
 vh6Q==
X-Gm-Message-State: AOAM531d37PEvptInbFeDk+nk/w2jJH0WTMmoApY266yhTWUQ/hWRHs6
 0WO6NdwQiIwbMASW+XOAT6ohkh7+xzRni6BRSWM=
X-Google-Smtp-Source: ABdhPJyTyCMuOfvTAiDO/girHh4u21WSCbuJhMVIdc+IQy6KLPZCW/ziB4NCNYac0prJTwdsgMKnMA2/Ou192b8yxHo=
X-Received: by 2002:a17:906:6a26:: with SMTP id
 qw38mr5521048ejc.560.1643336934171; 
 Thu, 27 Jan 2022 18:28:54 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a54:3186:0:0:0:0:0 with HTTP; Thu, 27 Jan 2022 18:28:53
 -0800 (PST)
From: Info Firm <infofirm449@gmail.com>
Date: Fri, 28 Jan 2022 04:28:53 +0200
Message-ID: <CAD_YcxshgvZ8p5uBAP+KQ1VC=43=z90xdOtMkDFAjJ6rAmB4AA@mail.gmail.com>
Subject: URGENT REPLY FROM YOU
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
Reply-To: michellederoma422@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings compliments of the season, How are you doing. I have emailed
you earlier on without any response from you. I want you to make use
of this $640,000 donation o restore hope to families and individuals
that the pandemic wrecked in your area. offer from me to you. Kindly
get back to me to my official email. for more details:
michellederoma422@gmail.com

Sincerely,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
