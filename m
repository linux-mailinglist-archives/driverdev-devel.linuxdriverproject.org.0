Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38854252664
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Aug 2020 07:01:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B0D2487C16;
	Wed, 26 Aug 2020 05:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E8Y63VdwIPcI; Wed, 26 Aug 2020 05:01:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19C7087108;
	Wed, 26 Aug 2020 05:01:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B0AC1BF429
 for <devel@linuxdriverproject.org>; Wed, 26 Aug 2020 05:01:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 707EF8735E
 for <devel@linuxdriverproject.org>; Wed, 26 Aug 2020 05:01:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c1Mb0S6Og75G for <devel@linuxdriverproject.org>;
 Wed, 26 Aug 2020 05:01:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.tourhouse.com.br (mail.tourhouse.com.br [187.32.239.34])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D90C287108
 for <devel@driverdev.osuosl.org>; Wed, 26 Aug 2020 05:01:03 +0000 (UTC)
Received: from localhost (thmail.tourhouse.com.br [127.0.0.1])
 by mail.tourhouse.com.br (iRedMail) with ESMTP id DF8D8482F1F;
 Wed, 26 Aug 2020 01:13:51 -0300 (-03)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tourhouse.com.br;
 s=202007; t=1598415231;
 bh=d9F8tBy24C+QRNkQxvFLCLfoD8TpLLFwaQ/2qvUaBoE=;
 h=Reply-To:From:Subject:Date:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Message-Id;
 b=Lwa/a1y0VuY897Ja6iJgNCFyYpQNJ3YfT4l3Ib7LmNVBNj1R8sCufqQ8f4aNGsvQN
 8rjDWPdPePhwkfXA7pNjBkjKJUlFSvA00om6CI1B1njMfkUvnqqy6GQeuaWSMW77v/
 W4aA2YEVWqiIWoqHr8xX9wWEzYBe8ctslflBwUCNu8EGNEKtng8gk+IjOMhIgAvnzl
 ZZtT3HnsyVYxcIkEad+3hnVD6QyZxFeLWVLR7fK3Y1CKB0Oc+dJS6nPyG+XqYN5zgS
 knrsnbfWsax61s0BkI75pyhvbRblGgbkfq7r86pPziurULwtCNszeMHFI2LtJ+VRE4
 t+RoSJET02EKA==
X-Virus-Scanned: Debian amavisd-new at thmail3.tourhouse.com.br
Received: from mail.tourhouse.com.br ([127.0.0.1])
 by localhost (thmail.tourhouse.com.br [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3dCEEWh3aZ6N; Wed, 26 Aug 2020 01:13:51 -0300 (-03)
Received: from User (unknown [167.114.43.82])
 by mail.tourhouse.com.br (iRedMail) with ESMTPA id D9D65482ECB;
 Wed, 26 Aug 2020 01:13:43 -0300 (-03)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tourhouse.com.br;
 s=202007; t=1598415231;
 bh=d9F8tBy24C+QRNkQxvFLCLfoD8TpLLFwaQ/2qvUaBoE=;
 h=Reply-To:From:Subject:Date:MIME-Version:Content-Type:
 Content-Transfer-Encoding;
 b=DvwrRC6rIsi7+xiPzq9+FBFvJCZdbDCkCt6D6nVMMhdgcjWSW17AcBPJUA0O5eAQh
 XO2VXsxGcfT+hNW24nLp/ICwPShpqekzkjt4ayksxJNCPZcrxSWYJFSUOTjReAYKzz
 4nmZRCF0xUfz2kIBQAXv8URca848K2AKlSiMF/1pNl6Izi2zscb43df199SImIDGr8
 9QyY+saiy9yMYk7YU4IaR4j9XOzGvQKsEgJp+m+i40zqImc6mgqEKX241Kx4DzdFyr
 4eqRUNI0tzIe2xEeh7yS2ZmSojYvIlWcziso/tSUJ1bHd74guERK5nA5FyJ0jx8UNy
 +7SeIrJ24w49g==
From: "Mr.Qi zhu"<crm@tourhouse.com.br>
Subject: Greetings
Date: Wed, 26 Aug 2020 06:14:23 +0200
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <20200826041351.DF8D8482F1F@mail.tourhouse.com.br>
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
Reply-To: zhuq308@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello

Please confirm if you still use this e-mail. There is an inheritance that has your surname. Contact me for details at:(zhuq308@gmail.com)

greetings

Mr.Qi zhu
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
