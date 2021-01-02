Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBA92E8687
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Jan 2021 07:03:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C4FD58727F;
	Sat,  2 Jan 2021 06:03:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T7VoAcnApxCK; Sat,  2 Jan 2021 06:03:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 193F087252;
	Sat,  2 Jan 2021 06:03:56 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 821711BF5F4
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  2 Jan 2021 06:03:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7F66A85B8A
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  2 Jan 2021 06:03:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B3y+8dbs2nfg
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  2 Jan 2021 06:03:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4C7FD85B71
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  2 Jan 2021 06:03:52 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id l200so26151359oig.9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 01 Jan 2021 22:03:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=07wP4+HPBVC2VHbUnFYsgWGMeRKZwcznPDaqHki/QJQ=;
 b=m1oisFMhoml6uXfgmw3nSJs/jyXbq9hwf7CYpBpWeX8Q4BtFci9Aq/bDIZIaOs7sCJ
 WPYEQf6AZpmtqvwqXXqVUp9BeblH9nX3ef1BEL2uIDbYDZGs5egGSzeZAmbWMPFtFjyt
 gAmHik+y/S1gGmwIlMCyHLGf+LwLPr4czVlznUPCSh+bCbQ2+0o8mar3qvjR8fBu4JHE
 Z0fGbWHVOk+M5olGPzr1mxdPP4TEMHJcUwKG+RW4Or7JFsQ9aVPAaZEc8s+HTD7GC0TJ
 /pDhCO+BZQDVtowdTLHqJYMjsq8NuNJYGX1mDHwW98jx27TT++TBYi+ZAzrIgHdruSr1
 13SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=07wP4+HPBVC2VHbUnFYsgWGMeRKZwcznPDaqHki/QJQ=;
 b=C5W/Xqk0iV6t2+Gzcq7H7md6bchzGEA4T84k8y4qMvFm7wtfXhEwvGgr+9jNY3eJrL
 evV1IDnIGCxFLLOboYqlhWXZ1w5OqjlRcpdHb6jjZ5tj2KiTwLjcTZxoQuHXT8+OhbZn
 PUFQSVGBIZbxB3WR5Lnw1fZ/kyH3pd8rlBxDxTNrMPXNMy8u0i8YXXLDClDr/FqJScV9
 LVXS+Lw9f7tbgLKHWwBEnSdFVs5A12eWsgu78W/fKy5hcH/z4PRDMdH9Q7PhpeqSCMc1
 /aTuwEn8U7Jxly3AcHFyOWg05CvnK49dnohYy5Hk90TPK4QldCWF4FFMgSu6qhQ+jx8q
 nLGw==
X-Gm-Message-State: AOAM532SNi6KF6QoCtxvDvxoLDcqN41mV4cO3woffHtTvcYtPx1iKmjD
 5bONExYIiuJgJUC1ePXe6aG/cu6+mAyuklpLX64=
X-Google-Smtp-Source: ABdhPJzEFwx46PD8J89VAiOh8sBXY70PUwNwW9UFN22n1YVBrIXffsfpxFnLoOkA/O2gK+VF6hGQ+5Q5L9RSAUJgGaA=
X-Received: by 2002:aca:4909:: with SMTP id w9mr11917740oia.166.1609567431433; 
 Fri, 01 Jan 2021 22:03:51 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4a:a493:0:0:0:0:0 with HTTP;
 Fri, 1 Jan 2021 22:03:50 -0800 (PST)
From: "Kath.Rafael" <kath.rafael01span@gmail.com>
Date: Sat, 2 Jan 2021 06:03:50 +0000
Message-ID: <CAGAku3KW66dydiY9Nh_bZQHURyV2fjjsiQrqj6+gxuD3K1=LHg@mail.gmail.com>
Subject: Dearest in Mind,
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
Reply-To: kathraphael5@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 

Dearest in Mind,

My name is Mrs. Katherine Rafael, a business woman an Ivorian Citizen
and born in 1961. I have a mission for you worth $3 500, 000,00 (Three
Million Five Hundred Thousand United State Dollars) which I intend
using for CHARITY.

I am a breast cancer woman and have told by doctor that I will die in
no distance future, now and want to donate this money for charity
through you by transferring this money to your account, to enable
people in your area benefit from it.

Could you be the one I will use in this noble transaction before I
will go for my surgery?


Mrs.Katherine Rafael
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
