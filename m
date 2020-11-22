Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD882BC9A4
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Nov 2020 22:49:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D2FA84CAA;
	Sun, 22 Nov 2020 21:49:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9qzHqZK-4j_S; Sun, 22 Nov 2020 21:49:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDB8D84DD4;
	Sun, 22 Nov 2020 21:49:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D1A41BF3E6
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 21:49:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 99FDB85D5C
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 21:49:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PhrODy+4lucA for <devel@linuxdriverproject.org>;
 Sun, 22 Nov 2020 21:49:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1B22B85CD0
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 21:49:10 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id k1so2195158eds.13
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 13:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:sender:from:mime-version:content-transfer-encoding
 :content-description:subject:to:date:reply-to;
 bh=holMzMixu6L4mPkY4KLX0AXrH3B7KLU6Q1+gVZ1hbDo=;
 b=JGlhak7cxn9/LOyTgaZSfzPHYMVvL3NCDzbA8VvLzbcHEHMFttZXT7CJZlk6Z+H37N
 NjHFxmp7bDwmtH1icAdDsu2vrw3pGHEqxHHBNLuJQknGSIe3JmuevF7WGx3f2w1Ob5C3
 wkqVfwnRAOIGSZvdHQDRUEvqixnlcBqnpLHNRdYUZtJ+FQIRUO+E1l35l4USvJ+p2dqP
 oR9pPJuzudvzLcNRy+ZgXooxG6BG53EzGgTGWJ1INQ7OSXMQOxGvWF+kJU582NnWMFom
 /Z0gKgS9eEIa2917M9GvUpKy3Jk1jnQVly2dC+AsX0QIm2V1gIF8C+gbgW4yKeTLg+LS
 vufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:sender:from:mime-version
 :content-transfer-encoding:content-description:subject:to:date
 :reply-to;
 bh=holMzMixu6L4mPkY4KLX0AXrH3B7KLU6Q1+gVZ1hbDo=;
 b=KudxLjpsPulZdhe6bWCM5jorqje6/h8B3gumA3YGSw24FmA27dT0b7IFPoz8y3uJrz
 gLcm/dLiEAULNba9bQULRyEaG/L5JpbFu5KH0XGmpobUX6fmhhnAmVK20/8C2VYKWLoT
 QRzefxG4vWkXPFtfEp52qEnl2leH9crm2ivmmKXo7lotWkxRzQLLD/DuYu6LX7ETr8mp
 9i54NhmJ8Ww1CFSz8aOL9J1Fv8CbEHJAWr3VNyak1oUhSKXPckd50aN61sNYm/M2bBMI
 d6EPT+AGVe9mBEZoD0IO4SfMWU1PojxUtlOIP6DMI0TS8LwgeJP5Z4koe7YFvg3atzKM
 YOLg==
X-Gm-Message-State: AOAM533YGXEBi+DYoc5nbjH/Cye1Cwqs3svMgQC+fYGwrXaMbY19DzXf
 0uMboTCLcxbYyiV3FmAEMCw=
X-Google-Smtp-Source: ABdhPJzAXAiVYdDjXAfnepDsnsUMJsiDwKTG1iYdNZ0rp6CfTu6kEDvHrunNthrowJxzTvTd+j+WGQ==
X-Received: by 2002:a05:6402:6c9:: with SMTP id
 n9mr25295579edy.67.1606081748532; 
 Sun, 22 Nov 2020 13:49:08 -0800 (PST)
Received: from [192.168.43.48] ([197.210.35.67])
 by smtp.gmail.com with ESMTPSA id e17sm4016232edc.45.2020.11.22.13.49.03
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Sun, 22 Nov 2020 13:49:07 -0800 (PST)
Message-ID: <5fbadcd3.1c69fb81.8dfc7.11b6@mx.google.com>
From: Adelina Zeuki <adelinazeuki@gmail.com>
X-Google-Original-From: "Adelina Zeuki" <  adelinazeuki@gmail.comm >
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Hello !!
To: Recipients <adelinazeuki@gmail.comm>
Date: Sun, 22 Nov 2020 21:48:57 +0000
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
Reply-To: adelinazeuki@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi dear,

Can i talk with you ?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
