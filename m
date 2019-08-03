Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD638084D
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 22:42:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 204712044F;
	Sat,  3 Aug 2019 20:42:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 53mJ2Gxc0uyD; Sat,  3 Aug 2019 20:42:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8BA1A203D0;
	Sat,  3 Aug 2019 20:42:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 524421BF342
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 20:42:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 472C58698E
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 20:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IawO-erwWfxv for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 20:42:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B906A8697D
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 20:42:09 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id a127so59351000oii.2
 for <devel@linuxdriverproject.org>; Sat, 03 Aug 2019 13:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=y7cIzG0PVrRis126czyvwHkkalaXGhnWuRZIJrhxFOU=;
 b=JO7+2mIpqIJBqScysSVhXNmpy98uySKIDEd906cL78i7LjWPAgCbI2KnDVMJGUTzA9
 QcTSJi3iu8cNGwzHydf2ihG8btZsQUAk5Zpzexema40o2Lo6qPemBFw8oOgTCfjfL4ft
 E8BsgJy7hUIDRf/lA6ZyHvCed0wtsRW0KIDxlvEl0UCXX2lqIuPJyAd0ysnXDe1+1CcH
 AsPCY7w+DGhM2+dBZoxPqJR0mUWs693b12bb4ZweJRnksLye+oRXVCxBoU6Qc5/h3jBB
 oEImZzc01I0iVff4X91FT6r8ajtGWvnwJo+6nDf1099+CnoJUzih4QGTkZ628bJA5ft/
 FhcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=y7cIzG0PVrRis126czyvwHkkalaXGhnWuRZIJrhxFOU=;
 b=MSf+na58HQLSxY859j9HT2E2Gna9yepoUWoVQXm9G66HZNSaPJUc/skzft3vemkHEc
 6tRhAOD9kmrFQyA5jeOW9EHQANNTWGog4lQ8cXP10YfSeWWRrG4/EDhNFYhwO1lVw4Dn
 gUNcjTEv3eIMqVzJ5bZyqUP+tckGuP4QraRHGdTFvt+KZ9JY75dRN1dkcl+tdkMBt59j
 yXypzMeaQG1deGVhK5ulRINEK1a2oU8mCL6iKWp6EcK2vD5mkSGYoBlcFdDbz8ggjUXb
 /JgnSQ1v0JWoWsW6Rg+1JAVfCJ7pmhn4Z3seaK7Fj9Me27VCNH80xruvzy/cP/G7LL8B
 ndLw==
X-Gm-Message-State: APjAAAWXlidxCNZiY+sMZrUmHYM0TwpMia9X1jMdqzxrvp/Xi2uJVbvm
 CCFXDg+Y1Yk0KwbAKGmW86xMV7y0+6Kqws08LvU=
X-Google-Smtp-Source: APXvYqzGQ/TqE1OIzcPTjj7AHPd82ki0Z4Z4sx8L3AsZimS7f93tuBDrNyhoS2pwfAIizEyHKyR+eYo73bI//qwyKkY=
X-Received: by 2002:aca:6102:: with SMTP id v2mr6260115oib.41.1564864928798;
 Sat, 03 Aug 2019 13:42:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:67cf:0:0:0:0:0 with HTTP;
 Sat, 3 Aug 2019 13:42:08 -0700 (PDT)
From: AISHA GADDAFI <yakissattajustin@gmail.com>
Date: Sat, 3 Aug 2019 13:42:08 -0700
Message-ID: <CALn3PExdaWgiTfD1zaDcivjWuGGCSWo=5rZTYPvdhbjDtWE2qA@mail.gmail.com>
Subject: Dear Friend (Assalamu Alaikum),
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
Reply-To: ayishagddafio@mail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Friend (Assalamu Alaikum),

I came across your e-mail contact prior a private search while in need of
your assistance. My name is Aisha  Al-Qaddafi a single Mother and a Widow
with three Children. I am the only biological Daughter of late Libyan
President (Late Colonel Muammar Gaddafi).

I have investment funds worth Twenty Seven Million Five Hundred Thousand
United State Dollar ($27.500.000.00 ) and i need a trusted investment
Manager/Partner because of my current refugee status, however, I am
interested in you for investment project assistance in your country, may be
from there, we can build business relationship in the nearest future.

I am willing to negotiate investment/business profit sharing ratio with you
base on the future investment earning profits.

If you are willing to handle this project on my behalf kindly reply urgent
to enable me provide you more information about the investment funds.

Your Urgent Reply Will Be Appreciated. write me at this email address(
ayishagddafio@mail.com ) for further discussion.

Best Regards
Mrs Aisha Al-Qaddafi
Reply to: ayishagddafio@mail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
