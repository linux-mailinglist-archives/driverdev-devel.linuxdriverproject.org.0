Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6713F58DD27
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Aug 2022 19:27:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB32C60A4F;
	Tue,  9 Aug 2022 17:27:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB32C60A4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HHdEXRknJxtL; Tue,  9 Aug 2022 17:27:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E61D60709;
	Tue,  9 Aug 2022 17:27:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E61D60709
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F2ABE1BF859
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 Aug 2022 17:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CBD8F40335
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 Aug 2022 17:27:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBD8F40335
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wLXVZ9uDFRI3
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 Aug 2022 17:27:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA645402D4
Received: from mail-yw1-x1141.google.com (mail-yw1-x1141.google.com
 [IPv6:2607:f8b0:4864:20::1141])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EA645402D4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 Aug 2022 17:27:21 +0000 (UTC)
Received: by mail-yw1-x1141.google.com with SMTP id
 00721157ae682-31f661b3f89so118541797b3.11
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 09 Aug 2022 10:27:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc;
 bh=iamq2T3Ceg534qSqkUN2jS9akGKvkSJjTrqZcmRmjlE=;
 b=33KmZjMMtP/8+L7hh/P8oxlepo1WoLk/jkYw4k7kZJ2SIYNbokbgrUvz9KkmR7kGuL
 KH2d4tuZLy6qJecWRZPsCcDQscIHK2ZvYAn0sidRoP3I/s1Sh1kKqPN2SnmB1t369II7
 UE65bIjm5r5pSoz5mRwX89KEa2qw1Uar0shsUZhN1wHn5NwF5EfW59/VPH9wwD6wXhZo
 QfdezWBR6RTVj9s01fE0Pa4SmC7HoBuHWyny7i4SBBYywi7hWQZvK0hucPoPctriu4rX
 PD0EKXfOrE+1lcrDa6EmrKa5K2J726zdGhgbSBF3ZTiYdBHt0+mKp9ReCPfCpFzEs+gk
 k4GA==
X-Gm-Message-State: ACgBeo1epeh1eGn3/vComry9bHbniBd1AEkKivl8YrMmRTdMQgZ7d6tI
 Bp1Mjtv2WRw28OTm2xcYvrLzeOfSMxTiS0HL5fs=
X-Google-Smtp-Source: AA6agR5OA3ExBPKgbl9ciT6FROQJUBBwI2gPMXlCiC0Kj4/5hcv0g/zzY62NCk+0RZB7WuwMhkWBDBKz5b843uis6O0=
X-Received: by 2002:a81:c30b:0:b0:321:82e0:f038 with SMTP id
 r11-20020a81c30b000000b0032182e0f038mr24044733ywk.278.1660066040543; Tue, 09
 Aug 2022 10:27:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5b:dc4:0:0:0:0:0 with HTTP;
 Tue, 9 Aug 2022 10:27:19 -0700 (PDT)
From: Ms Jacquelyn <mrseya@gmail.com>
Date: Tue, 9 Aug 2022 10:27:19 -0700
Message-ID: <CAN4z+baQ6bYvztX0Y0S1n5X4F5+bMz=jpwMU7h7qNK=HpcU=XQ@mail.gmail.com>
Subject: Re;
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc;
 bh=iamq2T3Ceg534qSqkUN2jS9akGKvkSJjTrqZcmRmjlE=;
 b=VPZIVNz3aepqX9xVUhTcrSQP000ygAw4Iq6qKbG1oSACZRWpWxzNriPXVJCqmBtUdV
 KI8GQlHcvRUTXQ3mJcRi+2K5O/eWZ/2Ayyj/HQrsivUlVo4U5uJ+EaaI7j67g2ATB9xy
 w6f0z53UJMCm+crit+U/CoGLlOqWKZIH1lzrxT17ME5twCN2YjhRksahJAr0eFZ13zFf
 K1Tf7q3MTs4k2gGEgHQNrNAQQwva4Q/cS9eQcuWuUDKn3QuxIgjfv9XB/4CVnGbK8kdn
 9q7dmM82QaeBjOi2TEY0v/bZk49lzTgHuvxSWYihpOLzKO6bL1bdmapUZ6lhpmOkfEck
 ljcw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=VPZIVNz3
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
Reply-To: ms.jacquelynmit@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dear,

My apologies for the unconventional contact, though it's for good
purpose. My name is Ms Jacquelyn Mitchard, a banker by profession. I
am contacting you to repatriate a huge sum of money deposited by our
deceased customer who happens to have the same last name as you.

For over five years the fund was without claim because the deceased
died with the family in the auto crash incident. Now all the effort
the bank made to locate the deceased family through his embassy was
abortive . So I contact you to make this deal with you because it will
be very easy for the bank to pay you the money as the deceased next of
kin , hence you have the same last name as him, because this is legal.

For more information to execute this deal, reply to my private email (
ms.jacquelynmit@hotmail.com )

Thanks
Always Yours
Ms Jacquelyn Mitchard
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
