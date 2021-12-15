Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB7A4757B4
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Dec 2021 12:24:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6007740992;
	Wed, 15 Dec 2021 11:24:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ozShD_jxs_jv; Wed, 15 Dec 2021 11:24:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8DD5B40947;
	Wed, 15 Dec 2021 11:24:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5BF9E1BF2F5
 for <devel@linuxdriverproject.org>; Wed, 15 Dec 2021 11:24:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B62A81A29
 for <devel@linuxdriverproject.org>; Wed, 15 Dec 2021 11:24:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cRiSuIY9PRRB for <devel@linuxdriverproject.org>;
 Wed, 15 Dec 2021 11:24:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B5BAA81A27
 for <devel@driverdev.osuosl.org>; Wed, 15 Dec 2021 11:24:29 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id z8so32785620ljz.9
 for <devel@driverdev.osuosl.org>; Wed, 15 Dec 2021 03:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=4vfQyttDdobHbBrio36ZO852PxT9+1cO/BhU8vf48uk=;
 b=FsRjlMLIfrg63BYoxoiEM3TzXL67RhQuceITV9swM3Du+3FY4QwWQ+eEewB0pMyTYF
 TrLQIerPBZ0MzOVqSw9gc0PjdEBc16m/EqnZM4XVnJZn4k/TiH3ZHUNbmj2h3kFqcbRo
 ntA0+hXsSBT1+gYwf3R9DpwjZFOeWZsZPuNwyU1m6mn1G/D6TGWGOOOHjVjbDrjxGTtq
 ScDQSsj5zjp+iJT2PRhgadzcgxT2x5p6A4lFLSCRsq58Hyi0VEyTxbuyQPyx9ZxJi+G8
 Wj0O9GtM0CS3B+6G2/voMmQP403k1zAP7CD0HeZ1lpzgk7QTNYquEeF66wWDNd0DkzWe
 65Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=4vfQyttDdobHbBrio36ZO852PxT9+1cO/BhU8vf48uk=;
 b=LP4ESRnGF82DEk9bAGIT4SB0FVyJopH89LUfck+UTRR794z0f49Fb/h9+ZdX+QoFjW
 HS33c2xGR3FN9IWwE3v2i9IGTC4o625PdQsFPAlgw0glGfLfiDEh9/2QSbBO9S0mvd3i
 GHbhCBbo7rhyVOOlicFsVBkOavC7YqVZVOobRXsd6AdIO6NwBPClQUWtVu9KdLSwNBd9
 jB0R1HNr3zFv8kf2ZsdozwrEh//z4QHQ0FvTtgXrnXpVFcyg4DzdG86RpNhhHyTRBiaH
 YVR/Fbmb71WhnwpAGchtr4QBP6VucZ66uZYskXiDgSHj0d72YlCnrGYRb8Qr0RS4UozP
 NOAw==
X-Gm-Message-State: AOAM531xpbvBbQBAseTk+6eO4moQuXvRQfKHhTqskhi2ii1t1P9NLNrn
 eK3lqqzjU+tl+6ALaWc5j4+K3BjSKeH1E12ePRw=
X-Google-Smtp-Source: ABdhPJz53Zkq7D4KuMQ8PLZFJrgeMcsMiu/EfpVS/AJml3oQ6o6DFYtzlqOIo+O1RmhmudGSska2Mc/TnOCHqMSyTWQ=
X-Received: by 2002:a05:651c:a04:: with SMTP id
 k4mr9921085ljq.12.1639567467718; 
 Wed, 15 Dec 2021 03:24:27 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6520:4281:b0:158:b9c6:c00f with HTTP; Wed, 15 Dec 2021
 03:24:27 -0800 (PST)
From: Hannah Johnson <hannahjohnson8856@gmail.com>
Date: Wed, 15 Dec 2021 11:24:27 +0000
X-Google-Sender-Auth: Siu9qUpCBumN2_5yCC-lMaUbOqA
Message-ID: <CADVVueXLJ2_3d5=woQv+nrT4GAkKe+YF9apOvP3A7r_K+xCYbw@mail.gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello
Nice to meet you
my name is Hannah Johnson i will be glad if we get to know each other
more better and share pictures i am  expecting your reply
thank you
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
