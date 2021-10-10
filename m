Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA064283C0
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Oct 2021 23:18:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DD5D826C7;
	Sun, 10 Oct 2021 21:18:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GP6_8LtVSTZU; Sun, 10 Oct 2021 21:18:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1AD0826A8;
	Sun, 10 Oct 2021 21:18:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 45C041BF41A
 for <devel@linuxdriverproject.org>; Sun, 10 Oct 2021 21:18:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F36A826A8
 for <devel@linuxdriverproject.org>; Sun, 10 Oct 2021 21:18:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c-H6jXLlObHh for <devel@linuxdriverproject.org>;
 Sun, 10 Oct 2021 21:18:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com
 [IPv6:2607:f8b0:4864:20::d30])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD5F5826A4
 for <devel@driverdev.osuosl.org>; Sun, 10 Oct 2021 21:18:07 +0000 (UTC)
Received: by mail-io1-xd30.google.com with SMTP id p68so17406742iof.6
 for <devel@driverdev.osuosl.org>; Sun, 10 Oct 2021 14:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=oOqUrSuUCCTti4b89vsLrMyMjdmQmo0cHUZ19+DYd/0=;
 b=d9BINw4Fa7UVYfEpz3kaHw9dAjtRbbwyCvcrC/5ONjDc3wEiZONL+UdUpZXj8ILNbF
 1+8hEghd/G+4KdxVURxnewSNd28tSKHIaE3k1XysFvGqUj5tejAVAFtPwgII7HeHr8Z5
 APdPxFiH089sO72CnLFfuVnqvcZHVhzfDCDVm7I4NrZVCyYLe2/U5LNenaXP15bRFLX3
 46Wc3sdWejSWX/PbJROlkqZkvKsa3zoYjJZ68qeyZIANhoFfBjgAXlu09wmtZBnM27ap
 V9GqmwlVJ7b05lxnfPcTWOTTLmU+bVMjQif3RKaf8ZoYtrvZdZ1qzSrFwK3sJuEGgr7g
 CzGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=oOqUrSuUCCTti4b89vsLrMyMjdmQmo0cHUZ19+DYd/0=;
 b=oKSUySpKpBzGObrKouXu3paZQj49Pbfezq0ixzMhOInvEAVLXZjXvarqEzReUkhvhy
 RGOYSKPrXitetvIh/7TX4kQSAwjzMBVOx4dn74fMRXMkzbomyPWcKL6A3Nstw20bjxpY
 hP9UMlrJxHz5UIdijq8/nQjVZB66xffvX0HFgMgRqa3yG4zoSMdeeKH7ytgxIePTsxTH
 ySBqJNmbWwOKJVsTPvU/dXZbO3Qq8yKj1FhibADFv3nmS1C7RdyxW16IefAMQy9GZuqr
 QdnZj4ZGV+XgAQ0gBfFOVCWKtTWUYBXyASRqw4dKnCxUORKOkXrel6vMF/0QMnJutAQO
 I1qg==
X-Gm-Message-State: AOAM531EmHD2dHerH6tVi3XlJjNmimPdAe+QuNhFmwJkcweU9dR+yZkz
 y6T3lGSPOdYBI5UVKoqDjO0PCJS8Gnu8mHQv3AY=
X-Google-Smtp-Source: ABdhPJzWZuOQurRA98Bq0BL+Z/rY1RoCRlEF9r70wjDGRbX40N0rvqJyvfx7qaQkBGjkNc4C0jLnoA76HCKCKFXikUQ=
X-Received: by 2002:a5d:8c83:: with SMTP id g3mr16508335ion.24.1633900686527; 
 Sun, 10 Oct 2021 14:18:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6602:160f:0:0:0:0 with HTTP; Sun, 10 Oct 2021 14:18:06
 -0700 (PDT)
From: Mrs Chantel Hermans <mrs.chantalhermans2002@gmail.com>
Date: Sun, 10 Oct 2021 14:18:06 -0700
Message-ID: <CA+YEVv8zY6336BG0mt5ZWRbU4-kih6iF-+LL3nzxN8QZoG2a0w@mail.gmail.com>
Subject: ATTENTION
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
Reply-To: mrschantelhermans@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 


ATTENTION



You have been compensated with the sum of 6.9 million dollars in this
United Nation the payment will be issue into ATM Visa Card,



and send to you from the Santander Bank of Spain we need your
Address,Passport and your whatsapp number.



THANKS

*Mrs Chantel Hermans*
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
