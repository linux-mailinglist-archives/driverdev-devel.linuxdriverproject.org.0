Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DB146726C
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Dec 2021 08:14:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5C8A8186E;
	Fri,  3 Dec 2021 07:14:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iJ7cVR-vMVkj; Fri,  3 Dec 2021 07:14:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3784980EFB;
	Fri,  3 Dec 2021 07:14:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6EEE01BF2F9
 for <devel@linuxdriverproject.org>; Fri,  3 Dec 2021 07:14:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5DFD140405
 for <devel@linuxdriverproject.org>; Fri,  3 Dec 2021 07:14:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OTgitvn8Zx9E for <devel@linuxdriverproject.org>;
 Fri,  3 Dec 2021 07:14:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from spam.tmax.co.kr (spam.tmax.co.kr [220.94.140.50])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A1AF40404
 for <devel@driverdev.osuosl.org>; Fri,  3 Dec 2021 07:14:02 +0000 (UTC)
Received: from unknown (HELO User) (jiyoon?song@tmax.co.kr@13.70.171.144)
 by 192.167.10.50 with ESMTP; 3 Dec 2021 16:07:15 +0900
X-Original-SENDERIP: 13.70.171.144
X-Original-MAILFROM: jiyoon_song@tmax.co.kr
X-Original-RCPTTO: deucher@amd.com, deumex@deumex.com.mx, deuschle@endrich.com,
 deutsch@yadvashem.org.il, deuxieme@nifty.com, dev@2gis.com,
 dev@ajay.app, dev@andree.sk, dev@apotheonlabs.com,
 dev@apr.apache.org, dev@bajji.life, dev@baton8.com,
 dev@bemersive.io, dev@broobe.com, dev@ceek.com,
 dev@community.apache.org, dev@component.io,
 dev@couchdb.apache.org, dev@doc-notes.com, dev@dudu.ro,
 dev@dudu.ro.html, dev@example.com, dev@frign.de,
 dev@garmin.com, dev@getyarn.io, dev@gmail.com,
 dev@gmail.com.html, dev@gora.apache.org,
 dev@hunter.pairsite.com, dev@iam.gserviceaccount.com,
 dev@isis.apache.org, dev@itsworks.com, dev@kyoto-museum.jp,
 dev@learnboost.com, dev@libcloud.apache.org,
 dev@logovista.co.jp, dev@mail.zxm.jp, dev@mamamia.com.au,
 dev@mowr.gov.bd, dev@mycompany.com, dev@nmap.org,
 dev@oodt.apache.org, dev@openvswitch.org,
 dev@pagespeed.apache.org, dev@papabox.com,
 dev@reallybadapps.com, dev@somedeve.env,
 dev@stormxgames.com, dev@subversion.tigris.org,
 dev@ululab.com, dev@venky.ws, dev@visdom.io,
 dev@world.apache.org, dev_android@skylinetechnologies.com,
 dev_hero_img_desktop@2x-scaled.jpg, dev_mohamed@yahoo.com,
 dev_od@librica.co.jp, dev01@example.com, dev1@myorg.com,
 dev2@heesakkers.info, dev2@heesakkers.info.html,
 dev3@mowr.gov.bd, dev47apps@gmail.com, dev4mowr@gmail.com,
 dev4x4@hydralink.com.au, deva@devainternational.com,
 devaccount@technology.org, dev-android@comico.jp,
 devani@bom3.vsnl.net.in, devarajn@amazon.com,
 devashish@ak.com.jo, devbooks@bigpond.com,
 devceyhuntasci@gmail.com,
 dev-crypto-request@bouncycastle.org,
 devdas_chandran@spl.co.in, devel@acadoid.com,
 devel@driverdev.osuosl.org, devel@etsukata.com,
 devel@galeracluster.com, devel@galeracluster.com.html,
 devel@gmail.com, devel@gmail.com.html, devel@lists.po4a.org,
 devel@onshore.com, devel@stasyan.com,
 devel@stasyan.com.html, devel@yahoo.co.uk,
 develop@aok-net.com, develop@gmail.com, develop@jorna.qr.jp,
 develop@j-wavei.jp, develop@wuta-camera.com,
 developer@7-11.com, developer@7generationgames.com,
 developer@altdigital.in, developer@ampowersoftware.it,
 developer@apigee.com, developer@assemblrworld.com,
 developer@benx.co, developer@bitsplayer.com
From: "Ms. Reem"<jiyoon_song@tmax.co.kr>
Subject: Re:reply
Date: Fri, 3 Dec 2021 07:07:14 -0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <20211203071404.5DFD140405@smtp4.osuosl.org>
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
Reply-To: msreemmsreem@yandex.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

My name is Ms. Reem Ebrahim Al-Hashimi, I am the Minister of state
and Petroleum also Minister of State for International Cooperation
in UAE. I write to you on behalf of my other "three (3) colleagues"
who has approved me to solicit for your "partnership in claiming of
{us$47=Million}" from a Financial Home in Cambodia on their behalf and
for our "Mutual Benefits".

The Fund {us$47=Million} is our share from the (over-invoiced) Oil/Gas
deal with Cambodian/Vietnam Government within 2013/2014, however, we
don't want our government to know about the fund. If this proposal
interests you, let me know, by sending me an email and I will send to
you detailed information on how this business would be successfully
transacted. Be informed that nobody knows about the secret of this
fund except us, and we know how to carry out the entire transaction.
So I am compelled to ask, that you will stand on our behalf and
receive this fund into any account that is solely controlled by you.

We will compensate you with 15% of the total amount involved as
gratification for being our partner in this transaction. Reply to:
msreemmsreem@yandex.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
