Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D6641EBF4
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 13:31:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55C414040B;
	Fri,  1 Oct 2021 11:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id faDqN-RfPkmF; Fri,  1 Oct 2021 11:31:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 69F6D40221;
	Fri,  1 Oct 2021 11:31:05 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 825E51BF5A7
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 11:30:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 727C18428F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 11:30:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zDXuiHlGu5ZP
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 11:30:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D0A8384220
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 11:30:45 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id p13so5326546edw.0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 01 Oct 2021 04:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=5L/E4eErsLvrvRSyjenHMn1XgR3BfAibYkaUBTxnmho=;
 b=hd/PjSG6IdoDrC82p2sa0fQNNZgejCtb/G/+g7R6MiwZyQKAuY1do5ktYCo6xRFssd
 pIpZrb+hSRc47RsTKdURZa4hTGSfqXVG0oIEZCMQWLyD1MkrBLQ3+IVBkkj6V7BwBHdy
 3T+iMUthUPRjY2L/GXFQJaHqDDfWspld4z6jnqodbttOiXPqOUVz2qFV2Whx1yovkpCk
 q6UxFc43yucoNrpzyyhra9eD6OmwuLkrh+tgIpbvAD7ktf3/BfgP4m3oIEr0qvXtC+Z6
 2BvCGcOrlcgTKVdlxR/Du40yMUhgsqCzZzvROelQPz2bE/stx8CF8Od6gd0RFHDXe3Hy
 e5CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=5L/E4eErsLvrvRSyjenHMn1XgR3BfAibYkaUBTxnmho=;
 b=ROWKgpGjYjRpBOWLtGg1FCugAO7CGQ3UpzzogRDyum+3ajOB/eXSAWrROrYTRseaT0
 O0C9z8EoOrJzEomUrI84klgKZflNxXnZm5gMhBFN8j67fo0+7xu7qSV7bJW7CQLZHRfM
 RLIkZC0FrXGvaqfmre3ScqP3s8bbfc51b3SczQ0bWlm1NBJvmCOr4hRX3s8TVLa3HjMm
 FRcgva+2W39XQZ383JcfftJmCajkUwWci7ddtM2mJ5tCZstWCo9+HTFE7waD+p3KCtvX
 femYR1Y3+mq/oSHh/2BglfxjHqkUWIw3se3Fmmi3ZX796fM7VZ78nSpOwr812BWci6Kn
 op7g==
X-Gm-Message-State: AOAM530BAgwpU824b6iTAIfBriYuCSRWvBzY3K2+dwk6m+bA6DAD/t8N
 GCvS+6oK0EX/0VvZ8Bup8eLT9eSVUcD6dQPC7PO4AONHJySs/w==
X-Google-Smtp-Source: ABdhPJxKqUp0rM+WRgjBzv8oE+kpuVaolSOF0q+gyb9o7IYKQQzPkp/JVCsMzF3TxHieM4SD98nzU1auJqsN0MQc/zE=
X-Received: by 2002:a17:906:c05a:: with SMTP id
 bm26mr5726263ejb.498.1633087842604; 
 Fri, 01 Oct 2021 04:30:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:724a:0:0:0:0 with HTTP; Fri, 1 Oct 2021 04:30:42
 -0700 (PDT)
From: Joyce Thomas <tjoyc1234@gmail.com>
Date: Fri, 1 Oct 2021 04:30:42 -0700
Message-ID: <CAF-RpUgszUm9wrDsWD_J7AL-vZT1kD3reSiShyEDWnE=MNpM_g@mail.gmail.com>
Subject: ATTN:
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
Reply-To: joymat52@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dear
My Name is Mr. Joyce Thomas. Contact me for more information on the
transfer of ($7.9 million dollars) left by my late client from your
Country. I want to present you as a business partner and next of kin
of the fund. I will give you the details of this transaction, as soon
as I hear from you. I need the information below:
Full Name:
Address:
Occupation:
Age:
Personal Email:
Personal Telephone:
Best Regards,
Mr.Joyce  Thomas
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
