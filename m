Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A0B185614
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Mar 2020 18:23:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 951FC898D6;
	Sat, 14 Mar 2020 17:23:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ZzC1WiGRdhk; Sat, 14 Mar 2020 17:23:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9309884CA;
	Sat, 14 Mar 2020 17:23:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F0E11BF29D
 for <devel@linuxdriverproject.org>; Sat, 14 Mar 2020 17:23:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5AF1887740
 for <devel@linuxdriverproject.org>; Sat, 14 Mar 2020 17:23:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R5OKrK1+iH5C for <devel@linuxdriverproject.org>;
 Sat, 14 Mar 2020 17:23:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DDAC18773E
 for <devel@driverdev.osuosl.org>; Sat, 14 Mar 2020 17:23:37 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id d15so12830673iog.3
 for <devel@driverdev.osuosl.org>; Sat, 14 Mar 2020 10:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=rySLrb6e8pdxDloLytBEUWmIP8HvBNLPxIuJLcg1j9c=;
 b=h9YhYCfhuvcoOK9JuTSnuiXg2cILoy3ExIWXtsaJYq8huKBTSezqcgybwNUJnF31OD
 8M4XkdAA+wF3Kc0hz30O/kK9eMooTs7yoqdIBJNfvWQnNRWRGMPcYzXrJl2zdeF1j7va
 J8XdxMT0KmL8llAYJuvJtfAv+moo5flCUCJCh/tlglJ+fFmIUPVbZ1fac7bCjKhbkCn+
 rZJerUAJLBThHl7kvNkOSCFj/J2Gim7L2OHs8nEEBbbGF0yG+oMEoxI1m7Q6XmwEaoXK
 TKHu+SSgJteucaBn++J1ylejcFocesa/O0LZlk7VxDKA6TPZDYhdjLA4ADjt7vhRjRdb
 KZMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=rySLrb6e8pdxDloLytBEUWmIP8HvBNLPxIuJLcg1j9c=;
 b=QIrZ7AYaKS3IlZLLCGxOJv394MDprmfDgDFiKoZHCUAhqapIt6rS6AjOSlfvzC3XmX
 GVEharJqyHTBF3tV3B+0Hs07jTZwExNAXygQswTUzFDn5+YBJouFzsC5DQJMLoLiJqNP
 gMLZLFMZSBKYImyE2Vlg/sfhL2819kEItIPzjJXq7e3BoKVuMNb9UDm1KeVJtbzX3a5b
 7iqoClv+x5jWjICYh3H/yHB9woqN7T5xX2li8l+jpyAHQN39LACioRZbQTDHZK2IXmm3
 AJS6anf+YIkKnoivf8UmCp9WUX0rYre9hA0hYExY7ubJ5NPu15pr7kSOK2utQlcLGdXR
 aLeQ==
X-Gm-Message-State: ANhLgQ0+pBp4JuqtBuppK40cTZ/ntOn3d+RwofVCWHD36tQhAsot7InG
 6jEnZBEVvRC/3TbR32ZbmDaTIP2nHWujhvIxcPw=
X-Google-Smtp-Source: ADFU+vsJ8OZ/Dhr0DwwgkL8CDPySYZHLYuNtMBF50V178xoCgQ3+Wbsy6eqrOFGI1hDMkk7GA6AGM8FMlDHfqPtuVxs=
X-Received: by 2002:a02:3f4c:: with SMTP id c12mr12249418jaf.115.1584206617074; 
 Sat, 14 Mar 2020 10:23:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:63c1:0:0:0:0:0 with HTTP; Sat, 14 Mar 2020 10:23:36
 -0700 (PDT)
From: Omar Ousman <omarousman25@gmail.com>
Date: Sat, 14 Mar 2020 18:23:36 +0100
X-Google-Sender-Auth: e3Esaw6NMf2t59gU8aF8hbfxq5E
Message-ID: <CAOdk3H=BWVFSbBHnPp89pkv5eyhE_YLWx_uztwjom2+untGdDQ@mail.gmail.com>
Subject: You received my last mail,,,,
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

I am Mr.Omar Ousman, a regional managing director (CORIS BANK
INTERNATIONAL) Ouagadougou Burkina Faso, in my department we have
US$9,500.0000 million united state dollars, to transfer into your
account as a dormant fund.If you are interested to use this fund to
help the orphans around the world contact and send me your personal
information for more details to my email omarousman25@gmail.com

Your full names..........
Your country of origin..........
Your occupation..........
Your Age..........
Your Mobile Number..........

Best Regards,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
