Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE434CB29D
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Mar 2022 23:55:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 94030408DB;
	Wed,  2 Mar 2022 22:55:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lor57IhK-iq5; Wed,  2 Mar 2022 22:55:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06D2A40275;
	Wed,  2 Mar 2022 22:55:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4075E1BF421
 for <devel@linuxdriverproject.org>; Wed,  2 Mar 2022 22:55:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2EC9881442
 for <devel@linuxdriverproject.org>; Wed,  2 Mar 2022 22:55:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cKTfJhXPa1Xg for <devel@linuxdriverproject.org>;
 Wed,  2 Mar 2022 22:55:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com
 [IPv6:2607:f8b0:4864:20::b43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A0125813FC
 for <devel@driverdev.osuosl.org>; Wed,  2 Mar 2022 22:55:51 +0000 (UTC)
Received: by mail-yb1-xb43.google.com with SMTP id j2so6612284ybu.0
 for <devel@driverdev.osuosl.org>; Wed, 02 Mar 2022 14:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=qSiHUdDEjXXkedMZH/Y9hM4ca3kaKSfzMb+auqefVqQ=;
 b=hF5Z2x25pfyEBWkG+431hlEhpnTIuUyQ0ic0QseWFlY+aqcCc1cY/NtvNngwlr+IaB
 A6J9PEHaqjDkZMO8wy/SXEzHn76rMn0Y8xepcLa7kv+1wfa7+jUinw1cTmMnQp9ur7Zz
 Pss+xp4NkXJ0UILccE+7AQCRsL/c8H91stGflH80E61blkFuouos/8e2lnaBWlUVPRlL
 7j4snQZKqO3FQH9/TdLl/PjzqF8nARnWyK6+PC4mVbTncDHkBwSl18tfw1gDMs3rk8jk
 hWeFoPoyh/CBviBhom+ybbyBwY+i2egYEgdOO4KnV1gTX2KvOZ1Hoorw/webUcSDbj46
 pUiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=qSiHUdDEjXXkedMZH/Y9hM4ca3kaKSfzMb+auqefVqQ=;
 b=s9Mw06ircsLFMHMPk9sr6+j41GUQ9zsOHUb4t6MOv3NlNQ/gsLvjQSeGevN+1At/M1
 pj0jl4OhcmVj9A4ALRtWTCZU6RdD0rawGpAN+q8YKW2acv+SI6ZAe/cSnpAZn/0y3aD9
 j3vtI8Nm34eKWuBf0b+cV0OrOrxIsAVIb/HVCd/ltJ5Jur8vb5dxG2IeJF2Qq+tGIiB/
 7Rhl5c6Ex52EXC0IMI311Y3YmNMp2ZKSZWKNGaPRtn+N+vPRMScFGLRcMNlcnP+TLl41
 DVeC1nA/rec9z/9+NqQw943OK1B8Gz2VascDvKsvRs/Y1RhUZW40hk2r5pGXb2boCz4L
 2ing==
X-Gm-Message-State: AOAM532feW61EcbnK3B+gvxtW8PHhPu7yDKCGNb2l3uaF0nPyUumopLt
 SudxNYKvXaDItPJyVvcITXv//CdSVznvJcxZoPM=
X-Google-Smtp-Source: ABdhPJxsgc4vMbxS1lyJPuqceGTktplRoxvaE9sPQdRVwx2ZyYoD9LCKNHFFnPyERcMDKNgOU7gOVDtbE+9JPzTzER0=
X-Received: by 2002:a25:c001:0:b0:628:97c7:6e6c with SMTP id
 c1-20020a25c001000000b0062897c76e6cmr6746892ybf.152.1646261750657; Wed, 02
 Mar 2022 14:55:50 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:3216:b0:210:a33e:8acc with HTTP; Wed, 2 Mar 2022
 14:55:49 -0800 (PST)
From: Info Finance Firm Donation <agbons111111@gmail.com>
Date: Thu, 3 Mar 2022 00:55:49 +0200
Message-ID: <CAK0vqeKgcpNEk34yKimQ_6bbMU+qtRGsAzvraGODhUQBE6gp=w@mail.gmail.com>
Subject: Attn reply me back
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

Greetings, How are you doing. I have emailed you earlier on without
any response from you. I want you to make use of this $640,000
donation o restore hope to families and individuals that the pandemic
wrecked in your area. offer from me to you. Kindly get back to me to
my official email. for more details: michellederoma422@gmail.com

Sincerely,
Michelle
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
