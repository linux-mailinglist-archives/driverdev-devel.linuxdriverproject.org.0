Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1C062118B
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Nov 2022 13:55:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4405160D4C;
	Tue,  8 Nov 2022 12:55:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4405160D4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wa4RlZ4DLGTK; Tue,  8 Nov 2022 12:55:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F07FC60C2F;
	Tue,  8 Nov 2022 12:55:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F07FC60C2F
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F07991BF280
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  8 Nov 2022 12:55:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D79D7408D1
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  8 Nov 2022 12:55:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D79D7408D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bhZ-laKh8Qyd
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  8 Nov 2022 12:55:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6873C401A0
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6873C401A0
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  8 Nov 2022 12:55:41 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id c2so14080321plz.11
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 08 Nov 2022 04:55:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
 b=IQiSo3x/nC1Bj+Ui8Mwt2ehmPCL1abfAR2fWogov75vj6L/B36Gk4ljbitUUnDoGTl
 gBcc1+q0AcJVQmYUHhiyKWPM1ZI3nwodXBYGJV7ulTA+ZLCjFfvwPdXyL7SaWoWHCHS9
 OwnM6lq8kN4KY8En3621JoI54H5JSXVNeZ5PRI86uVbn4lkUhZwwmVa7JoA5BGzyzNtp
 siUJ/r3iEs8Yg5CRUxStSgV42+/hBh2wfqJEPIeltIzH78PaQ9BZCPCIat/+pUiq4Nti
 FOQFI3FP0ciwkwXpYHepZrX8vV7Zg400ZEuiw5Z7z88Xz4D5S30jVr9hZHuXtcN+Bfgv
 e2kw==
X-Gm-Message-State: ACrzQf3KdYPed44OFjDK/UfVn9bsd7WhrBUZtx7bmIWnoAiO1mRSkxaF
 SAnuFmKvxRhZYX+1LLdIMVZlTdskUUVDfdhrqU0=
X-Google-Smtp-Source: AMsMyM47LS1qPZzLkwuenKG9e8EkqVAx0b1o0h2FMTeFjb4uVbum8HuMg+fTLdolpE8VrYkkaCtOGqUAWl4+Li1UXi0=
X-Received: by 2002:a17:903:124c:b0:179:da2f:2463 with SMTP id
 u12-20020a170903124c00b00179da2f2463mr55014644plh.128.1667912140584; Tue, 08
 Nov 2022 04:55:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a11:c394:b0:352:4c7b:293f with HTTP; Tue, 8 Nov 2022
 04:55:39 -0800 (PST)
From: "Mr.Abraham" <petersina60@gmail.com>
Date: Tue, 8 Nov 2022 12:55:39 +0000
Message-ID: <CAAxicr_Ht+E1c1=DdHJU221hdcfi0CkGrtNrQpRt0EnGUPsFUA@mail.gmail.com>
Subject: Greeting
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
 b=Xu3q1wpAFZi5siecx8YJYeMVEiNO3QQV0TxZRQ+DJyt3xesiqjEQF0Rm7HTl3nwOFx
 axFRcyI6i7i6G4/pP2PvVEqbCOsB5kO0Bz5I7GGRrQ5Gw4A4Y5+pCeaCclAgMJGi5sLD
 EqDwDVpkgunNcDGahlfRBuw9Y/t4QzNoq+MJQosb/zVUJD7djXxdETeMvdiX+3iENykj
 /L2SxI+qBvUTceQFCbCgAE/U6X7DwfDOgC1n6cPEToepiM9X2r1bEe3nVe4yS9labuc0
 vSFhNVcwJs6y2ZBANwx+PchOUfyI1hgi5b0wl44pDO48PKbbUM63TL33jEl8pD0dx9Cw
 DrjA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Xu3q1wpA
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
Reply-To: mr.abraham022@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My Greeting, Did you receive the letter i sent to you. Please answer me.
Regard, Mr.Abraham
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
