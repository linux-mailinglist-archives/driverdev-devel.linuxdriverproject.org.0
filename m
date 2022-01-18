Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F013F492627
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jan 2022 13:55:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A13660E09;
	Tue, 18 Jan 2022 12:55:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ymq49o3JzGzg; Tue, 18 Jan 2022 12:55:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0D5960D9D;
	Tue, 18 Jan 2022 12:55:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DBDC1BF368
 for <devel@linuxdriverproject.org>; Tue, 18 Jan 2022 12:55:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6BFB560B9E
 for <devel@linuxdriverproject.org>; Tue, 18 Jan 2022 12:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 40uOSE41StSy for <devel@linuxdriverproject.org>;
 Tue, 18 Jan 2022 12:55:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD72260598
 for <devel@driverdev.osuosl.org>; Tue, 18 Jan 2022 12:55:17 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 l12-20020a7bc34c000000b003467c58cbdfso5594201wmj.2
 for <devel@driverdev.osuosl.org>; Tue, 18 Jan 2022 04:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=kt7BSYvG+rr2bLEECwLOEMCvBVZotJIk44/4XcKD9H0=;
 b=OmyP/N7LYfX0p9uEOOXwjCsyHdKS9Y2NFyZSIXegy4I/NM6vl6QKnKCfxyIkOTyvef
 tZFIp2flMZ+pEzTuB0OvhUwK6EQt+LhimmuE3mcr96GGfZcco4EL50HQ4aeD8/y7Axfh
 ULck26PIwu0ZT8FLAhImfHZhp+Hhr3jEJXl2Qo2P7b+T2nIf2bsUGN+32vOs1TeMY+rM
 L+XcJOE5eXXvkFRP3+89bTB0XnVhG1lqV+B1zL95lkwVhwrWURpr55RgOakUG8eU/uuO
 llYhkTaNEJes8lOcRjbOOPDdcLWzl9ZH9eMjtWFYY6gw224xfFxW3qi1+4wleDTZ/lhj
 akbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=kt7BSYvG+rr2bLEECwLOEMCvBVZotJIk44/4XcKD9H0=;
 b=41kOiA5yeiNQEayizj9FajczjAitGtm2KMVB0mEVRNUnzlFU9RE7/NNgZSdKYRDsLE
 H3kqtKh4ZfrdNSiX2Jf/YZBZAt2T3N4aZzlPix6UWE8mEwMKsnoATlKoyrggIXy3vTU9
 KKeajO/vuDokWwKGaNtfRaOgbW6yEIi74VNJsm6lGqfzcOnW0+26OarGqZdK+PSF/x+/
 PlCWwVZ1hlbDOVkAUcZH6HcSwq2gXkiPnHWCn544CFRYAUVnvKjtnqCD0sRQoswgh3Fg
 X7+49H4duYKB3qFfgl7xOlapBi+whH6OxGyoUnh1bx7ZDapgEVa7bv6u7IzhFJIO/fo9
 gD/A==
X-Gm-Message-State: AOAM533ov26626rXEY12aXMbSuOqwaU2Cryy63ObR97hdiPz4FP/fVw8
 GNq1IueBGrI1Ki6qyQmkY6flcvWkKQcOaLEu1tM=
X-Google-Smtp-Source: ABdhPJzXfCtIA/eBIg8Q16ipVxikSuXdDlzWel05VRYY8cRYkOJ97wA77e12m2TIIrcV4GKwRZ4RM0W/A/tdQlLoewo=
X-Received: by 2002:a5d:64c8:: with SMTP id f8mr10205742wri.3.1642510516070;
 Tue, 18 Jan 2022 04:55:16 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:adf:e18f:0:0:0:0:0 with HTTP; Tue, 18 Jan 2022 04:55:15
 -0800 (PST)
From: bratikox <bratikox@gmail.com>
Date: Tue, 18 Jan 2022 13:55:15 +0100
Message-ID: <CAFuXTSyqU5KGTTG4oYJUA0AH+QKXwRq4jTk0VzyKge+3K_=2yQ@mail.gmail.com>
Subject: Salam Alaikum /ADIA LOAN OFFER
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
Reply-To: mohsheikhalhamed@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Salam Alaikum,

We are a United Arab Emirates based investment company known as Abu
Dhabi Investment Authority working on expanding its portfolio globally
and financing projects.

We are offering Corporate and Personal Loan at 3.5% Interest Rate for
a duration of 5 to 10 years.

Please get back to us on Email: mohsheikhalhamed@gmail.com ,if you are
interested for further embellishment.

We also pay 2% commission to brokers who introduce project owners for
finance or other opportunities.


 Yours truly,
 Hamed Mohammad
 (Personal Assistant)
 Abu Dhabi Investment Authority
 211 Corniche, P.O Box 3600
 Abu Dhabi,United Arab Emirates
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
