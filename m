Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0542D18CCC9
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 12:22:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D357875A5;
	Fri, 20 Mar 2020 11:22:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mVH4S7MhIXjs; Fri, 20 Mar 2020 11:22:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E9537875A2;
	Fri, 20 Mar 2020 11:22:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E1DA1BF300
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 11:22:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 78932875A2
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 11:22:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o7x1p4oFeDrh for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:22:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C5D5687591
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 11:22:19 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id j16so5616260otl.1
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 04:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=6w+aFSJ+2vZ3lBtg9xVXLOFVqSNoMPd625E7FNYobb8=;
 b=Pf/weUAfOIiJrSxirpBihZi6rDPdhyQPdqV31VjwvFYCZrXzvBkOQEdBeDD+fX+N79
 qt9tmCm3FjbnRdoqGWpCa20Uk5e1bhGZ/0wJS+wlw72uJad71tcUBjcoeSwEUuruvXcA
 84tRSqCB2Tph2tBoxOjpJV1x/Ea/J8W5HzqXPv65IQxNfJKY1At/wswC5dSURMa29aoD
 8zo4+xruOlzLz3L4vwtTRqRx9ghKaKGisLI9y4mD1Sh4zDOfgU90m4NEBHVFFDUWfnA4
 NQH6UOJvtwAQlpwMApniIE8f8/D2Yc9OrACifoz9y0lKr31XZXe0ZPRAGdpIASeffTj+
 mh1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=6w+aFSJ+2vZ3lBtg9xVXLOFVqSNoMPd625E7FNYobb8=;
 b=UuafeJT6sJXRX5oW3RipehC8CqiHWkoFxEbcB4rqqOCs4bTKoP9QmRP78jsVwxWiGX
 LgWsIL9Qoz6b4UGzwBaGvFdqfFi0W1HG74DGWe3kqkcwyYAtlpAW+mmjlXSym6yUuXhU
 nga8DHl7QG4YiwId4IcwAEOf45fpDl08+0hNs514kLplMsMB5ARG5wLcFZrsX2fcmN2Q
 ugWDFcVNdA2AYu56DHIC8Q8M3flxbG2JP/JUJsIlEsn11/7GBuV7HlGy5KNqUlyDjbMo
 th4W348k0Whizo1+zdKnCLzHKZMKEB2qfW4ntz5q0OjL/hbULX/li1/f3Nwa/v4UFOG4
 Vi0A==
X-Gm-Message-State: ANhLgQ1WB/2m/SikRIPIyZnuH0AD5xsWr8ZGcFnhgtsTYJSbTYVMgyek
 8X8NcviieHvUzB3FA5TQbxSrKilpYn1WOA6aThI=
X-Google-Smtp-Source: ADFU+vsduRj3hrCf9DhK2bNvKDpHo5/uVyU9cffULt+Uh+xPEULP1CtCYadaVmwGXRoaldTKMt0qeMlG0eCXLSlrUpo=
X-Received: by 2002:a05:6830:3151:: with SMTP id
 c17mr6555852ots.310.1584703339020; 
 Fri, 20 Mar 2020 04:22:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6838:40c6:0:0:0:0 with HTTP; Fri, 20 Mar 2020 04:22:18
 -0700 (PDT)
From: ECOWAS COMMITEE <ecowasmonitoringcommitteeabj@gmail.com>
Date: Fri, 20 Mar 2020 11:22:18 +0000
Message-ID: <CAHHubrYe0Tme3z6y4=35rwkeKtHK_aNvGc957sh9eWYyPOf1Vg@mail.gmail.com>
Subject: HAPPY SURVIVAL OF CORONAVIRUS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Sir/Madam

HAPPY SURVIVAL OF CORONAVIRUS

We the West African Monitoring Committee of the West African Economic
Community(ECOWAS)are contacting you for a business transaction which
we feel will be of great interest to you.

Our duty is to see to the coming in and out of funds into this sub
region.There is a fund which we confiscated worth of $12.5 million
dollars.We will like you to receive this fund on your name in your
account and as well helping us in the investment.

You are advised to contact us as soon as you get this message for
details of the transaction if you find it interesting.

Best Regards,

Mr John Aka

Chairman
ECOWAS
West African Monitoring Committee
Tel 00225 6716 6756
Abidjan Cote D'Ivoire
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
