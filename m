Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF71177E42
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 19:09:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CF86820519;
	Tue,  3 Mar 2020 18:09:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sqVm3kyFKgT0; Tue,  3 Mar 2020 18:09:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BAC3620514;
	Tue,  3 Mar 2020 18:09:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DCBA1BF4E4
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 18:09:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9AA0984C33
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 18:09:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ptBjz4AKvzgR for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 18:09:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6EB7C84867
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 18:09:01 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id p8so3567746iln.12
 for <devel@driverdev.osuosl.org>; Tue, 03 Mar 2020 10:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=42VRx4KA+cD1ZZnhz/34yl/kjJSKnU+ahvHX6e7S6BM=;
 b=q7YmcB4c3xNivUiRnGbEmHi9ciBYsBTGJ3kBqOzI/c6CTS7TSPqRgaWNk025FpfiIk
 UIHk/34W6/novGmD0W9ZSoJZbAR9qiyBwIbPfw8htytv3Pu+5ladp6JGliaatdTqYqkf
 Fk69LG5Nm8YzADex4Vi+pf/rIeGNqNr78qVqopOdKzY11PtfTXtKZPzyTZFXbL/EduMu
 vrTog13bOuCpMRI3PU9oQb0Q48DD/QD7nIIPWvI5CtHad4tT7V7uSdaJEhJ+oaISbJID
 ga65o7/Vvvpc0yIEqzcmaI77Jw6/EO5F/+EQPV/TUhotVu/KSLDlNqX9UAupuiIWaWiJ
 N+sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=42VRx4KA+cD1ZZnhz/34yl/kjJSKnU+ahvHX6e7S6BM=;
 b=HLME9v3DAmvGY37XoJbz8VMjK9i+vxVj0ou1UANcMGzWwRbqivpvvFTEYuj8J+/QVl
 DV2GKpD7Y0qp0sr6MP22yo4oeDo24M4pyfUoHD8YNcPosfboMQ+lv5c4l20AasCbAPa2
 1dJc9F40gbVE3/H79ySwGVJFlsStqof4JWflrCtEzYm14Qz82nas4jdEVbUrrhTN+qjm
 eWhSKzoUCdtXUOph6tzQk3gewKIeiTj5edsunTIRIprVIS+3LAFwX6OqBaYmm/9D7OL2
 xcJC/pipd4sc5kYHYpIjzTQELBG9LRz6ovAxbjuiKTamVfuti/Khl4DEJoh4V4vwCpmN
 fhSQ==
X-Gm-Message-State: ANhLgQ1I5SkxvpBOTpYdWyE/B105UxZVb8LOOVLmjrLoeodIhnBVHKqr
 rO8A0pALsp282nkRKZRJwT6f0U2OvxCoFFq+8HA=
X-Google-Smtp-Source: ADFU+vv6E+wsnvPeg+ajcohjNvpKFAWgFSPumeVI6/s74fKhIZXkTb+ytEUQRfjMVtoUc1OrqPZutNFrjMHjyYaW0Q4=
X-Received: by 2002:a92:244f:: with SMTP id k76mr6178413ilk.290.1583258940852; 
 Tue, 03 Mar 2020 10:09:00 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a02:9f04:0:0:0:0:0 with HTTP;
 Tue, 3 Mar 2020 10:09:00 -0800 (PST)
From: DR CHALLY NOAH <mayorabrahamedge404@gmail.com>
Date: Tue, 3 Mar 2020 19:09:00 +0100
Message-ID: <CALqVJWdFx_aWTT4kkN0eD5b+-M5aPDZmP2kebmH9eN3yv-cVBg@mail.gmail.com>
Subject: Hello Dear
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
Reply-To: dr.challynoah@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dear,
What Have Kept You Waiting To Claim Your $600,000.00 USD Compensation Award?
This said fund was issued out by the UNITED NATIONS To compensate
you.Please If You Have Not Claim Your Fund (Award),Kindly contact me
at   DR.CHALLYNOAH@GMAIL.COM   for further details on how to proceed your
fund (award)release to you or better still reply back Immediately You
Receive This Information For An Urgent Confirmation And Release Of Your
Fund To You Without Delays, as your email was listed among those to be
compensated this year.Congratulations..
Best Regards,
Dr Chally Noah.
Minister Of Finance On Foreign Remittance:
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
