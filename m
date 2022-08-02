Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C06C5875A4
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Aug 2022 04:52:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B97D4087F;
	Tue,  2 Aug 2022 02:52:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B97D4087F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RSzWWO5UvhMC; Tue,  2 Aug 2022 02:52:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5E2A4087D;
	Tue,  2 Aug 2022 02:52:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5E2A4087D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B3D251BF319
 for <devel@linuxdriverproject.org>; Tue,  2 Aug 2022 02:52:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A18960888
 for <devel@linuxdriverproject.org>; Tue,  2 Aug 2022 02:52:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A18960888
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xTofAh-aXNMB for <devel@linuxdriverproject.org>;
 Tue,  2 Aug 2022 02:52:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B8A560812
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com
 [IPv6:2607:f8b0:4864:20::112a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B8A560812
 for <devel@driverdev.osuosl.org>; Tue,  2 Aug 2022 02:52:44 +0000 (UTC)
Received: by mail-yw1-x112a.google.com with SMTP id
 00721157ae682-2ef5380669cso127504257b3.9
 for <devel@driverdev.osuosl.org>; Mon, 01 Aug 2022 19:52:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=IniFjyVHQ6lWflzIsICmJ5JUtVB9MkE1WWkHF07cmBg=;
 b=FbnZKYJYusjVQf4FjtqVPiAkILEeLUSk713/7bXbzK2eceYpyjlZRAeZphKCuwldXr
 zUlE4YuOXZx3FGpuyOhJBC7iU1f3ck4pJSd2czkANAHmnx8BMeXEI+QlHnEkuHYTyEeh
 4g3k7d4so/4cKp27TujOMdiDbrAvNS4r+fHDKuxK+tKHBgyVbp7HjrknKrMdOVJkeYLe
 tQ2nMDRs+wyyaXYd6/6T/lALIuvpPZ4yFRs7OdECiAGIe9R81g9PZ3r5EoPl6Af7mtaf
 yn2U6au1kaOcguon+pP62grqaHO91KGuZ/J0cGm9+t/qDyNcT2pLdVoAvmVuPkSShTQ4
 xrHw==
X-Gm-Message-State: ACgBeo1OvI1yMB2xolvY+aIeoY4YjI96ZmUa+8ea1HPaM1SmRBuR0Hh3
 KC3WW9vgLtU8bDaDjONw/vfmvK/Q9qsQFGxkfmg=
X-Google-Smtp-Source: AA6agR4JuEtJibcUvXSJlfjSwU19fFC7DmMHyMwYrR+koSslTgOYXUU5Kmb0OpPvB75veke5TSZ3nnUQe36kmSzHINA=
X-Received: by 2002:a0d:d883:0:b0:324:e4fe:9cd3 with SMTP id
 a125-20020a0dd883000000b00324e4fe9cd3mr7542870ywe.495.1659408763208; Mon, 01
 Aug 2022 19:52:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6900:ac9:0:0:0:0 with HTTP; Mon, 1 Aug 2022 19:52:42
 -0700 (PDT)
From: "U.S DEPARTMENT TREASURY" <boiatoaka@gmail.com>
Date: Tue, 2 Aug 2022 02:52:42 +0000
Message-ID: <CADjH9KiGNM_Vn-aS2ttF-=6aXp1d2UF8dS8Q2GcRd-SWGDD5_w@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=IniFjyVHQ6lWflzIsICmJ5JUtVB9MkE1WWkHF07cmBg=;
 b=oH0zUePYxm7m8jQ3K4+e5hW9lAmY/tclT8FbGFSoSR0N2XDzMjT5GJ7Pg7L8si8WDO
 /KppQYunkSwI0doz0Zv+2DEQtZAfwIgFRH5MHHfVWLE1n/eDXyxPHyzknjQsZJrnOkCU
 koiZ+QsrZK9k04sMkBCqYEti+0reoYYHVLmPvc84QkhlFsrq1nFDMANp09xfCespnBjH
 DdrbQTlVi5JXVEVwwTl7WJcE/g3chBNW8KlEeSrKE/IwjA4Kq8DTopBNqDdpg05waFrO
 GrnfrhqLHzBm1O4N7r3Hrao6aLRcRk/ql4ktDZ+Y8UnKmICFXAWrAJyPmipvizFk255/
 Pa7A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=oH0zUePY
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
Reply-To: usdepartmenttreasury63@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello,

You have an important message get back to me for more information.

Mr. Marcus Hamlin
Deputy U.S. Department of the Treasury
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
