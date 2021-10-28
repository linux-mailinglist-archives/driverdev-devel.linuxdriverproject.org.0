Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 875A443DA62
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Oct 2021 06:29:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 122A240571;
	Thu, 28 Oct 2021 04:29:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YPDWeEail_cW; Thu, 28 Oct 2021 04:29:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 748BC4053A;
	Thu, 28 Oct 2021 04:29:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4DB101BF27C
 for <devel@linuxdriverproject.org>; Thu, 28 Oct 2021 04:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3EB5E40208
 for <devel@linuxdriverproject.org>; Thu, 28 Oct 2021 04:29:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B3VVIG26q04Y for <devel@linuxdriverproject.org>;
 Thu, 28 Oct 2021 04:29:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vk1-xa36.google.com (mail-vk1-xa36.google.com
 [IPv6:2607:f8b0:4864:20::a36])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 733EE400E5
 for <devel@driverdev.osuosl.org>; Thu, 28 Oct 2021 04:29:30 +0000 (UTC)
Received: by mail-vk1-xa36.google.com with SMTP id n201so2376665vkn.12
 for <devel@driverdev.osuosl.org>; Wed, 27 Oct 2021 21:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=J64IZF9PVQr8R+mvV6ce9ekiJ1rmezsroOUDCf2tvvE=;
 b=fhXYv19ysRvIdT/NYPDKsL7raOw3iBnm29pcfgffw3ZXYmJedYwlD+TmKqh9MnLRMO
 zIU2qvD2GMjDFt2/7Zz59txO70vhX+A9XJdbDDk8hnoqOMXU8fquxO+ALZnsbTpsUvP+
 /oj8IJ1VbczNr8tVFba7gawhgYd3ePZBZ85EJ5UQsSHEgkL3jr3hRG76THknTjWCTpQe
 1ZHyv0+y/6TrDTLNOuB/V7M95uQ9GcZoJx/Gqj232RySbxK4bZjJ0XCJFqOQQeQ3ypLp
 Wz1iNfyf97iIT37X+JLVEiIPzEmM+sXHNXlcsk0wqSR3806irjuqp3G4cwZ/AGgN0ztt
 50PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=J64IZF9PVQr8R+mvV6ce9ekiJ1rmezsroOUDCf2tvvE=;
 b=AGvKZTvRPpkaN8j41oY7DTbT+XOW6+zCXiCgZln10gIOTUyC1yR/YkUPk6AgI4k/Hz
 LkDGb/azOznFsfRk3aQA3EOQGMDgco3ZDYCtacsrv4i5nyeuthQFYWLwbB5nU0gChXtW
 9qj/9BsXmlBskYCCkO7eAGWmq/v3IesA0zeV7J82w3VNVadJGIQYEFVICujp/yxPsoRS
 EKvmyqlAqa4W+6svtD/p/M2gmn8RYmYhe4ag3cM8ybr2edD28V4gIENXsdFBI+sgGO61
 58HlWAwkpE3gPk0W2bNiu8dj722ZCPIvXQYD8JgpvqiNu+Ci8R0DU3lnbN7vOGhCNvQU
 MVHg==
X-Gm-Message-State: AOAM532zEjvVDuX+RIx3/hQxXOMZkH8gN8ckegfQAupOMc0REBaAVuBh
 dXvF9Kur6IOQmXuBL9uAm6rSH4/Fudn+cPKZwhs=
X-Google-Smtp-Source: ABdhPJyfmYXhEAuoHpfdxbUJ9UcmPXS//3aRAGaSCbtdgUTGJOTlg30rWEdoFxoFDBjuH1kF7ogONNF9PZQ/zVBH+Ik=
X-Received: by 2002:a05:6122:d87:: with SMTP id
 bc7mr2214066vkb.8.1635395369333; 
 Wed, 27 Oct 2021 21:29:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:1567:0:0:0:0:0 with HTTP; Wed, 27 Oct 2021 21:29:29
 -0700 (PDT)
From: "Dr. Joseph Mark" <josephmark00011@gmail.com>
Date: Thu, 28 Oct 2021 04:29:29 +0000
X-Google-Sender-Auth: 2Jq8Y4OoRRjKMOxGMjeV5LDXlF0
Message-ID: <CAMroiSOxd95L+QHGVi1AYffoGq3J1Ffsth1nLS6q3YtWLx1O5w@mail.gmail.com>
Subject: Dear Friend,
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
Reply-To: josephmarks20201@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Friend,

I am Dr. Joseph Mark Work in bank. I Discovered the sum of seven
million, two hundred thousand dollars (usd7.2) belonging to a deceased
customer of this bank the fund has been lying in a suspense account
without anybody coming to put claim over the money since the account
late owner from Lebanese who was involved in car crash.

Therefore, I am soliciting for your assistance to come forward as the
next of kin. I have agreed that 40% of this money will be for you as
the beneficiary respect of the provision of your account and service
rendered, 60% will be for me. Then immediately the money transferred
to your account from this bank, I will proceed to your country for the
sharing of the fund.  If you think you are capable and will be
committed to making this deal successes send me an email as soon as
possible to confirm your interest.

Yours faithful,
Dr. Joseph Mark
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
