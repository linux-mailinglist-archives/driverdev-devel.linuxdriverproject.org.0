Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7F76A4FDD
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Feb 2023 00:53:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5279581EBC;
	Mon, 27 Feb 2023 23:53:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5279581EBC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j10zwk7hjwFY; Mon, 27 Feb 2023 23:53:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3550F81EA7;
	Mon, 27 Feb 2023 23:53:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3550F81EA7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4736B1BF2C5
 for <devel@linuxdriverproject.org>; Mon, 27 Feb 2023 23:53:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DD6DC81EBC
 for <devel@linuxdriverproject.org>; Mon, 27 Feb 2023 23:53:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD6DC81EBC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UQgKg_sMvqhX for <devel@linuxdriverproject.org>;
 Mon, 27 Feb 2023 23:53:51 +0000 (UTC)
X-Greylist: delayed 00:55:05 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 467F781EA7
Received: from webmail.santamaria.rs.gov.br (webmail.santamaria.rs.gov.br
 [177.36.46.196])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 467F781EA7
 for <devel@driverdev.osuosl.org>; Mon, 27 Feb 2023 23:53:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by webmail.santamaria.rs.gov.br (Postfix) with ESMTP id D86AC2C01C4C;
 Mon, 27 Feb 2023 19:36:18 -0300 (-03)
Received: from webmail.santamaria.rs.gov.br ([127.0.0.1])
 by localhost (potrilho.santamaria.rs.gov.br [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id P9ydEIxSXrS6; Mon, 27 Feb 2023 19:36:18 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
 by webmail.santamaria.rs.gov.br (Postfix) with ESMTP id DC3342C01DE0;
 Mon, 27 Feb 2023 19:35:37 -0300 (-03)
DKIM-Filter: OpenDKIM Filter v2.10.3 webmail.santamaria.rs.gov.br DC3342C01DE0
X-Virus-Scanned: amavisd-new at santamaria.rs.gov.br
Received: from webmail.santamaria.rs.gov.br ([127.0.0.1])
 by localhost (potrilho.santamaria.rs.gov.br [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id gdbfapqntlwv; Mon, 27 Feb 2023 19:35:37 -0300 (-03)
Received: from [10.23.18.246] (unknown [149.57.16.56])
 by webmail.santamaria.rs.gov.br (Postfix) with ESMTPSA id 00F4E2C01F49;
 Mon, 27 Feb 2023 19:34:33 -0300 (-03)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Hallo ist David Kaltschmidt, hast du deine Spende erhalten?
To: Recipients <dionatan.delevati@santamaria.rs.gov.br>
From: dionatan.delevati@santamaria.rs.gov.br
Date: Mon, 27 Feb 2023 14:34:48 -0800
Message-Id: <20230227223436.00F4E2C01F49@webmail.santamaria.rs.gov.br>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=santamaria.rs.gov.br; s=BD0B7146-1B04-11EB-A346-9872CBB7CC57;
 t=1677537337; bh=viYXDmp0g9bMBSLjL/zTwGOYkEaTa5K7DY0zpJzqaM8=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=Qn9eRnZoruzWpOsjtCEE+IRzvcGif6NWr+eJd9zVMLOUMNqFD4+4CkwIqoLm3590C
 W1VWnPfcuhsQ2frwGz/G5FdXui04R3oiXCAHEgMuUopdmnzrLzqspsa8SCCFy3naq3
 uiKQFQvwCpxCEz57iVO3RT+cKwUpn1iUwP9ctbdCKT6eQpzFqka28x3GuI3xp8Yguy
 15ZbB94TYKyMPiYyJt/pFZ1NPIUPgjW8uzH22CUSfjEdAZxNoZ5rVhHew5vS7lN6DC
 zO7LaJ6U70mbMtgqn85r2DYitQ/4kdNJWXOZDwlWT2MTW1PhPpyRAhAMAwARNwJ505
 9USgKte768pfA==
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
Reply-To: Davidkaltschmidtd@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Guten Tag Sir/ Madam Ich bin Mr. David Kaltschmidt die Gewinnerin der Virgi=
nal Mega Millions Lotterie von 2 Millionen. Sie wurden zuf=E4llig ausgew=E4=
hlt, um einen Teil als Mittel der Wohlt=E4tigkeit zu erhalten, haben Sie di=
e Spende erhalten, die Ihnen zugesandt wurde, wenn Sie mich nicht unter Dav=
idkaltschmidtd@gmail.com.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
