Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CA0312D8D
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 10:42:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E040D8685D;
	Mon,  8 Feb 2021 09:42:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B2xAnkCqubAq; Mon,  8 Feb 2021 09:42:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33013867F4;
	Mon,  8 Feb 2021 09:42:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 029B91BF96B
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 09:42:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F27E684D9A
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 09:42:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t9Qh0-UKpr2Z
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 09:42:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BDE7684CC2
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 09:42:38 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id f16so11949520wmq.5
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 08 Feb 2021 01:42:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=z7Z/JdX0RhrlgqchmamXWMY47TIIKUp5Zm0+e0J1lMs=;
 b=M7t1XnWkOFFCe0b72eSK17MK2UmyOMXX0Q5QU7VziRJAmMplZgC2NAQVBFyehX7WKX
 3gtJwFjnK1GnOqdBCG49y0ih412qIGFg+UGIsOgw/MdHQEzhGEYCQ3c9WNugW8KAK3HP
 794M37pX/vAx2APxrlD9GjpPtq73fYBPQRQw09fQuAJSXwDhgipq79CpONOFJZyMUAuz
 tQS3yOsZR1cqXYneKZg99xo989ujxk2OAdlMGgQuXHq0qQ9eQ5vM2OwCNyWhr2zmSMeu
 MN6Wl9r1ssl9GXjm5n5mnygM0ke4/5+VSD7VM9AA0v2pqqWgqN5LUYXp/K+6dr7pqnVc
 gvrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=z7Z/JdX0RhrlgqchmamXWMY47TIIKUp5Zm0+e0J1lMs=;
 b=bgVyzp0FFbcDW+SiBb77FFOljXXzLMD8h3vaSm9Tb0MiPppX2UGAvSLLCkWFSdf6tT
 W36AMe8ffwkSRYQihiCpSrZOqPpRg2M/Ud2E8prZ1PfOoB60fgtlPEje5l/dbVE4z/v3
 JHc2EITpxAsrUrzJktZaa+iY5ZkZHOULVAXGU/8HoEbMngeAgsQEcq4/rqBCMCkMpKrO
 X2jrwDE8JQ4CFSp+AjkDLTcawaKReUYJ40p41I1g14xzWKthMWeyoRud4zHKp0qDzIyx
 sEKfzI2uPlFeJ0lacot0lUBzhRuw16vIAkWzKMN/psndJwd1RxCfVLO5WaqLx2k+sUp8
 IMgw==
X-Gm-Message-State: AOAM530bC5TSMQBjJvkiVkx/xh8CxJcnq+iYzptSrPGGzyLmLO/njkVT
 Nt+quyPOyTzNyIW8WK13ky04nAjAkafsz8378KE=
X-Google-Smtp-Source: ABdhPJwHXjBFfHh6GUHeSU0pS6GtSZpKhr6izt183GE0wZjCV6ME1xUoXdYKmZ/WPvLMD4eEH2XCy/rVnbB+arEBSEo=
X-Received: by 2002:a05:600c:3510:: with SMTP id
 h16mr13633566wmq.156.1612777357169; 
 Mon, 08 Feb 2021 01:42:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a1c:2c82:0:0:0:0:0 with HTTP;
 Mon, 8 Feb 2021 01:42:36 -0800 (PST)
From: "Mr. Richard Thomas" <rictthhomas@gmail.com>
Date: Mon, 8 Feb 2021 01:42:36 -0800
Message-ID: <CAHG73zwh4turz5mhmqY-PaTpGF0HubufKLmrK2Fa8j0zcOFxUw@mail.gmail.com>
Subject: Re Thanks.
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
Reply-To: infowebb@citromail.hu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,
I will be pleased if you can allow me to invest $104M Dollars in
Estate Management,in your company or any area you best that will be
of good profit to both of us

Please do well to respond including your information for more details.

Thanks.
Mr.Richard Thomas
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
