Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 253EC471031
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Dec 2021 03:01:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5688A429CB;
	Sat, 11 Dec 2021 02:01:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1fFUAMETicl9; Sat, 11 Dec 2021 02:01:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40F03429CA;
	Sat, 11 Dec 2021 02:01:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F29B11BF9D1
 for <devel@linuxdriverproject.org>; Sat, 11 Dec 2021 02:01:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC462421F4
 for <devel@linuxdriverproject.org>; Sat, 11 Dec 2021 02:01:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JUGHSek1kD78 for <devel@linuxdriverproject.org>;
 Sat, 11 Dec 2021 02:01:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com
 [IPv6:2a00:1450:4864:20::143])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B101421D8
 for <devel@driverdev.osuosl.org>; Sat, 11 Dec 2021 02:01:38 +0000 (UTC)
Received: by mail-lf1-x143.google.com with SMTP id bi37so21162740lfb.5
 for <devel@driverdev.osuosl.org>; Fri, 10 Dec 2021 18:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=UB8HPXfiFrSS8lJHVD9imqT8IM8lXgQeVTQMVTTdoew=;
 b=mz95yEd7wqF+xhUHtNPAXzDqdjYFScvN3EmOxAWd7Hh/o1vy+XqEivxP3kDofXPyLO
 W5XYmQxuXpNI3d7FE6qlKbDJOmp94nfu+yejkZPeS8A+ZVAmw4cZ+M6yxC0QmeEf1OXV
 PvDrRZYwPm6F8rgxNp9KyZWDTRe2X5+2LGXtbLKhD7Oa/8VkVmV/ger+T/AcpZOMY+Hr
 pk6PIvsKN2RQ9T1Jd5CmaYlFRwzl33lR1Geg2MwN8uXRCax0hB6XBG9KhwPleIbxoFyA
 9z1MohiiVn4QgqqC9HVrz8gzOxH9wawpDOURL7bzutAg2ChxVB0407dYfMeaU4eByX7U
 kFyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=UB8HPXfiFrSS8lJHVD9imqT8IM8lXgQeVTQMVTTdoew=;
 b=GZ445VeG2Osy/Sfhnsgsa/1joynryBTRjMfxD15kPra6EMNX47vI6s7eRwfiNQztse
 OcZynRBtCnssNrh7ALtl+PhG+xjMUm1TvitbM7uUJiaEosD1gyU1FE8IOVrPHf6LYmiz
 hOLYuZWmS7LifzGSI3+c8c6SvXmMsM4axg7xlg8FcMnFjXef8beF//CdvVT0Rp/8uzoP
 MCYQZvrG3CL+xiVKPOl1G30hHO/5dK6+H6xLUKE0uLx5yHmrwpuPtIwsS8R7kiLaBDiz
 WXN48Oxfz3DL1zqcQBO6JhO4ZF2qqRVr3bENah+SYgWzBv3jBH8UG+FVnBh2tg7MgGzZ
 y3iQ==
X-Gm-Message-State: AOAM533E8zKU8Yk7ttB58XenpaMLf2B0beyXQUEBXNv/w1BSihdU5VzC
 tcQm1cSHHrj2ips6my0XQ760ZTBHrNmoRSDFcuo=
X-Google-Smtp-Source: ABdhPJzO1rWK98J/C4GWmBNNeA4TMusWwthEf445R0dRxZhfqtQs8WAeeSSG9+arglNkiB0I8dDFlCz1Qas71LQQq4Y=
X-Received: by 2002:a05:6512:3f28:: with SMTP id
 y40mr15606868lfa.609.1639188095920; 
 Fri, 10 Dec 2021 18:01:35 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6512:12c7:0:0:0:0 with HTTP; Fri, 10 Dec 2021 18:01:35
 -0800 (PST)
From: International Monetary fund <abubakarsadiq1297@gmail.com>
Date: Fri, 10 Dec 2021 18:01:35 -0800
Message-ID: <CAHXNoSjzJGPbSRqufvG2p9+fDSLRA_m=x+GXMLdQjX8eJrF8EQ@mail.gmail.com>
Subject: Dear Beneficiary,
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
Reply-To: internationallmonetary695@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
 I.M.F Head Office
#1900 Pennsylvania Ave NW,
Washington, DC 20431
INTERNATIONAL MONETARY FUND.
REF:-XVGNN82010
internationallmonetary695@gmail.com
Telephone : +12062785473

This message is from International Monetary fund (IMF) I am Mr Bo Li
deputy to  Kristalina Georgieva the current president of International
  Monetary fund (IMF) We are aware of the stress you have been passing
through and how you have lost your money trying to claim your fund ,
you have to worry no more for the international monetary fund is fully
 in-charge of your fund now, contact  me for more info on how you will
receive your fund( internationallmonetary695@gmail.com) or call me
on-Telephone : +12062785473 for more info.

Regards,
Mr Bo Li
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
