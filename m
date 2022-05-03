Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7965519116
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 May 2022 00:15:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AD1C4183C;
	Tue,  3 May 2022 22:15:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0A5QzdcWBCea; Tue,  3 May 2022 22:15:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8647C41514;
	Tue,  3 May 2022 22:15:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BBA111BF83B
 for <devel@linuxdriverproject.org>; Tue,  3 May 2022 22:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B7D1241831
 for <devel@linuxdriverproject.org>; Tue,  3 May 2022 22:15:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zMOqgSYIqACj for <devel@linuxdriverproject.org>;
 Tue,  3 May 2022 22:15:34 +0000 (UTC)
X-Greylist: delayed 01:45:35 by SQLgrey-1.8.0
Received: from host.neuprime.com (unknown [94.249.167.85])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6F56341514
 for <devel@driverdev.osuosl.org>; Tue,  3 May 2022 22:15:34 +0000 (UTC)
Received: from neuprime.com (unknown [194.146.25.215])
 by host.neuprime.com (Postfix) with ESMTPA id 94A392999029
 for <devel@driverdev.osuosl.org>; Tue,  3 May 2022 23:14:37 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 host.neuprime.com 94A392999029
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=neuprime.com;
 s=default; t=1651608878;
 bh=hADrVttlQhf4GA/gq43oxMhnUHXVuklAieMy4z6XVjM=;
 h=Reply-To:From:To:Subject:Date:From;
 b=QehU0QH/03yJJTkDG4PiCVvzmBbu1/XGgEjKWFgtbox+cmBgPNDN5ePjyAYtpsWdl
 QFo4sShXroasxjriaOpP/Y1nAYaPoRLJWnTfCB1AjsRhZzq6YSQ5QDuCYa4gjh49MT
 cxE02fBTktuao5y4L7+wFnN9Kk/Qi0WC6VOLFhFU=
DKIM-Filter: OpenDKIM Filter v2.11.0 host.neuprime.com 94A392999029
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=neuprime.com;
 s=default; t=1651608877;
 bh=hADrVttlQhf4GA/gq43oxMhnUHXVuklAieMy4z6XVjM=;
 h=Reply-To:From:To:Subject:Date:From;
 b=pouXLbSywq+9137cA/3iJPeAGT+8YBC3Rg4KLoTW7m3bqWGQKYncKhtO0rTqLq2AF
 uPpnACoZ423sem/6cKo03Wn7KV5UG1nrhBo0Gw074hBJw6NojqaHNUvvaE8qFyMHAl
 niiEMmOOkpuIf7nm/SgFBir8qzXaViNNx7+L10E8=
From: Adem Karadag <ademkar8911@neuprime.com>
To: devel@driverdev.osuosl.org
Subject: Get Back To Me
Date: 03 May 2022 23:14:37 +0300
Message-ID: <20220503231437.0539D82F1DC22C20@neuprime.com>
Mime-Version: 1.0
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
Reply-To: ademkar8911@esmailsecured.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good day. I got your contact from an online European business 
directory as a reputable industrialist with high integrity. I 
have a proposition that I think will be of 
great interest to you. I am the personal assistant to the son in-
law of a Russian businessman. My boss and his father in-law and 
part of the few top official in the inncer circle of the current 
cabinet that strongly opposes the war in Ukraine. They have been 
frustrated by the sanctions and poverty level that the country 
has fallen into ever since the war began. The only problem is 
that it is impossible to oppose the President publicly because 
those that have attempted to do that in the past were killed. 
That is why these small group of oppoistion are trying to secure 
their assets both home and abroad to avoid it being seized.

The main reason why I am contacting you today is to propose a 
business cooperation that will be of mutual benefit to both of us 
and requiring absolute trust and total confidentiality. To get 
down to brass tacks, we need you to accommodate a large volume of 
assets for safekeeping. Bear in mind that these asset is aready 
safely out of the Russian country and was secured by a proxy so 
you are not at any risk of jeopardizing your safety at all.

We need an established businessman or owner of a big company or 
industry for this task, and you will be handsomely rewarded for 
your efforts as well. If you are 
interested in this proposition, kindly respond back to me so I 
can give you further details and what is required for our trust. 
We will also negotiate an appropriate 
compensation for your efforts.

Yours faithfully

Adem Karadag.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
