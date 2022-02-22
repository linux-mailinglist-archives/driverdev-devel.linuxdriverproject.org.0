Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BFF4BFAEB
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Feb 2022 15:28:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31ECF60803;
	Tue, 22 Feb 2022 14:28:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cExE4pU_14jf; Tue, 22 Feb 2022 14:28:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C32DA60674;
	Tue, 22 Feb 2022 14:28:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A8E71BF34A
 for <devel@linuxdriverproject.org>; Tue, 22 Feb 2022 14:28:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 88C5280B2D
 for <devel@linuxdriverproject.org>; Tue, 22 Feb 2022 14:28:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zXWEVRrZ0zO2 for <devel@linuxdriverproject.org>;
 Tue, 22 Feb 2022 14:28:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E708880B13
 for <devel@driverdev.osuosl.org>; Tue, 22 Feb 2022 14:28:32 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id s24so30923344edr.5
 for <devel@driverdev.osuosl.org>; Tue, 22 Feb 2022 06:28:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=rvQADyFM1/yISroyAfFtZJinl4CMDkOypzF/AS5Ef8E=;
 b=Dl9cabi1iNcH8b4bYdhPTTsIKJxKK7h++DQUjtbqQvRqvPALlRv45/SUMd3vROIFhe
 GEU4QVW6s+rgZhfWwzwF6IUHWKGvRCWA4I7atbHQv9AzcchIjUYUedC3wYYmbC0SgDDw
 d91AdTDXxWev98tNowdO5gtI0jt0eKS+o3xyPlqyNbz+C8nssKnlxkPbl3Y3djVDwdJk
 6/fqjYXTB3+oGHizG645NNRMm15KsZB+DY9+X3JuY75Hp+fYRhtlnpwJwane4fzcXQ+l
 qAa9jzxCDjQajl9L/sKjICOhGshnQm23tyh/aPS5Nu9cPak+pJcqrJfDHK+GpoUCXhWe
 wh5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=rvQADyFM1/yISroyAfFtZJinl4CMDkOypzF/AS5Ef8E=;
 b=j1SuAqM1abYZW/eGhNLR9l3zG8w0vtWNWtPQkTj2aJxI+7HcWB2bZR5Qp4t7v/hHsT
 gfVqx4q7KXKWFllc719wpMYhuAxsoWv7Qos8n8bnx72IwWZyJpHmZte6EcL78Iz05h79
 wD3xOj1MR6LgW0dklYvPFMK9T6adOuJRuaIEUfpQ7M64dDQNDSH9Pq7buEjM3qTXCnS/
 hWWkqYanPGsnaVh67l5gIabZBkakSFldyiXXLM7tIhgpSxVn0uhMBovdTwc0qKdaeY4l
 K7u0nIHOUecicu+KCcl0osjqQ1ekteF8g0CKr4YhQYn+yTdXI7XtWz48vOCCJOwegkPJ
 s4pg==
X-Gm-Message-State: AOAM530wUExOYnrc6YN6imce8euVz5BJT69ZPURPgk+hRJPn0pVTdbXT
 wCDpBX7xkVW7tvuU/ijWxGKTJfLloSv5ePg1HXc=
X-Google-Smtp-Source: ABdhPJzTMD1mWeHG/QL9+SJG2+EajrI9dhfT4bQdFILX0Juwz6h0WpPPTb+Y4vRTdfUWWsegcHk5q7sLDYW5IYk6BKw=
X-Received: by 2002:aa7:dcda:0:b0:413:2c17:d969 with SMTP id
 w26-20020aa7dcda000000b004132c17d969mr1287468edu.185.1645540111004; Tue, 22
 Feb 2022 06:28:31 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:907:1caa:0:0:0:0 with HTTP; Tue, 22 Feb 2022 06:28:29
 -0800 (PST)
From: "Dr. Joseph Mark " <josephmark00011@gmail.com>
Date: Tue, 22 Feb 2022 14:28:29 +0000
X-Google-Sender-Auth: GjRzkrOOmkfHJ5x1Ay9IvZuQUH8
Message-ID: <CAP1hxC7kz-NNtYu6kdVHoiQjS_au3vAOHs3f+7mzL6sXmo3Feg@mail.gmail.com>
Subject: Dear Friend
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

I am Dr. Joseph Mark Work in bank.I Discovered the sum of seven
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
