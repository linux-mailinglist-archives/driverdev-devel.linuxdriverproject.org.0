Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A651F500E
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jun 2020 10:11:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D26D587E97;
	Wed, 10 Jun 2020 08:11:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OAbYtdybSorz; Wed, 10 Jun 2020 08:11:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4B46987F8A;
	Wed, 10 Jun 2020 08:11:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36F9C1BF391
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 08:11:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3347A88773
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 08:11:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m1+0-XzNpgEC for <devel@linuxdriverproject.org>;
 Wed, 10 Jun 2020 08:11:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2054.outbound.protection.outlook.com [40.107.93.54])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E43BE88744
 for <devel@driverdev.osuosl.org>; Wed, 10 Jun 2020 08:11:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fVwF+woz4A0Lx6nKrNVMkXCy5vEaWU2tHvsr5V47I0dUV4g+y+a+VZbYeulaGFaP6tI/B++5TzM9aGmEhL945cyOqKs4lU+KJ3rqVqjaLOkJBZbjvfFP5LKCbOySn4pARxxeF7Eh1TEibXeFTGxIEJQodchklEPv4g673K3qB5kzUc9gAd8hNHmBjCLqShWmpZVxcbWjP15TWMayc/HkTpzptjmTjivjOaYu/2NebJP9Q9NRCuQj9Gnqn0z3zJq7+Gb4SvQgU9CppvvoAmPRbLZFUAsCLLGTINdzOZIWSfKjstvRQdCEy/7FdDhjouyIIzUFWK115uvT7+Yb7UqeNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZZxzLyYzUEfPT32+wlwwCf77+/PVJ0spb08GUhwPgzU=;
 b=MpJbSIqw/YUS9FRUgd9yW2XdA2m1NixQuXg1yYbOzKm7K+9mPavPsnHJAtaepGBM8cV/McvTmfp/SWW/oyiHdZxoTIiBiWg4I3/U4m3T1fOZ9hi5jpGVsZBOgtrownB9V3QmMJZw3yQWcnHXcev40DPFzecC91MS4jV8NT0KvSdhe/qgsvnIgcvz3MbOohu75W1fABOgdtB6l2gTvTs0dKYAeqx513WqyjuritBEW5fWIR5GdjmRmGHndPyIF0BNRAu9zaWFpDZYgfQ8YvL4pexS5eRciggABvH8ocuF9nMS6fHhr0EzngmtfANID0dQ5pXzX3Z++zKasJtDeZwEMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZZxzLyYzUEfPT32+wlwwCf77+/PVJ0spb08GUhwPgzU=;
 b=eyKD4RIk5oVozk3pCDZLY1Eoe90DxjCAS40pyCgjxCue54XdtZgIh0nTWmn1A83mwLGBiBq1JiaGW98dLF+3TpIzCmmM5lt9heF90VXtVrsiZpewOtHkCjKgvVL1+YYTCPaMh0UqwYRieHfpcsJ9yKd1x8BpLqtO01fwzDGfcXU=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2542.namprd11.prod.outlook.com (2603:10b6:805:60::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Wed, 10 Jun
 2020 08:11:02 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336%7]) with mapi id 15.20.3066.023; Wed, 10 Jun 2020
 08:11:01 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Mohamed Dawod <mhm.dawod@gmail.com>,
 kernelnewbies@kernelnewbies.org
Subject: Re: [staging-testing] drivers/staging/wfx/hif_tx.c
Date: Wed, 10 Jun 2020 10:10:56 +0200
Message-ID: <1949452.ECF46Ag4iX@pc-42>
Organization: Silicon Labs
In-Reply-To: <CAGCTLNSwM+5kzSABDN7DGFKz4FcCN-DwUmhU8dzhtyW0=kh3gg@mail.gmail.com>
References: <CAGCTLNSwM+5kzSABDN7DGFKz4FcCN-DwUmhU8dzhtyW0=kh3gg@mail.gmail.com>
X-ClientProxiedBy: DM5PR19CA0041.namprd19.prod.outlook.com
 (2603:10b6:3:9a::27) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 DM5PR19CA0041.namprd19.prod.outlook.com (2603:10b6:3:9a::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.19 via Frontend Transport; Wed, 10 Jun 2020 08:11:00 +0000
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 70ccfaf5-9417-4404-f59c-08d80d15d062
X-MS-TrafficTypeDiagnostic: SN6PR11MB2542:
X-Microsoft-Antispam-PRVS: <SN6PR11MB254241A81422E5939CEE9B6E93830@SN6PR11MB2542.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0430FA5CB7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tmdT2/PYlgWxno2R6vOorMz27AY/lsQTLTaRNl9V7jqHw97QBiyArRwJeoLWLK5PuGiRj4m46aa4OcRIjIQF80aVl951p8JP84lH/X1ZVOSBa9oBC0NwNS5epCqlTu9esEdO/QiWWAqVS0slerrLnZe1Vic1jl67lLvGUJMyJneQg89VhSKGrgx54gqMpO0RnHr/U9ehEQz/AOfvMXtV0btVsbMpIz/34bJwfh7POKFt8/heGkFY6wT0ZNKdEYANYGMcC1K7a2xhEI9ZPb6QRYF4B2wDZnldHUO9v4Gh+VAo2hTNkiD5JnY+W6aNhUPcurW2QHIFg3iyuzWfKOoabkTo8y+/RQWPZMW7sRx8hp9/QRQ/cEBlQsIFMnqrcL6SPE5q6doyVqEOM1tq4+BLIq6CgKEls4DA1yMOSfpAME8nGG5nTCiR3OK9cXIZjkCmDaExp9vVMOiYrwXdaPdecA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(376002)(39850400004)(136003)(396003)(346002)(8936002)(966005)(110136005)(8676002)(36916002)(5660300002)(16526019)(478600001)(86362001)(66946007)(66476007)(66556008)(186003)(52116002)(2906002)(9686003)(33716001)(66574014)(83380400001)(6506007)(316002)(6666004)(6512007)(6486002)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 4nRCYPUo8AZwc6ytnJs6QUOlpZfgKZ7iV4aCN2n3c5K947HjYSb71l+1waY010SFWlHTVoeqXDdiIi+lRRGUlSE/1uCuKHmYVddSKUt3KyZZc7S4XwK5tzQKB6oOdt+/yq9nq0Fcxfb3DpD6kIr4zlye5rr1rKaBQMO629q0xY7CgzpJAFI7wxK74ZekK6gGIhSWpFgima88XKWfbjahchzfmEMVgm57pmXC7x4fJAKZRubJQFCXGEuq29jFDhEAElmdkybxBSmleKWYPJrpx0NKIZ6/SCdFShvTL3E9ysXa3q1+uTDWNcnPhADFSyRIjGuQXqSSO7yceJd4Hp2WdcAt5AvGr37v/kXkAlbL436J18K3Y+EnkrOrydxzc6Qg8psH8pYpyF4AkYYSaJSCS3qykR42y4RJbTUg3z7bE2kL2FfdoQC3+7ok+1Jdy8hLxiXc8itEXo940i1Qm1RwEOsSxJvrE3QtBKmt8fHq/YJo9TWSTVyWQhrsPaLCWE8RG+vLpcux2QAcaBetaL2Eb4EliZFdP6SSp4zZrmaHLzA=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70ccfaf5-9417-4404-f59c-08d80d15d062
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2020 08:11:01.8333 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aN2DX3hbb+px8JnwTIpAuaW90utXEAN84F4GCOXtPReI4hR+G/bHNgRKBMfbsYO2ZZUNwYwNHboLzYT4zOT5tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2542
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wednesday 10 June 2020 08:53:13 CEST Mohamed Dawod wrote:
> Hello,
> =

> I read this point in  staging/wfx/TODO file
> =

> - In wfx_cmd_send(), "async" allow to send command without waiting the re=
ply.
>     It may help in some situation, but it is not yet used. In add, it may=
 cause
>     some trouble:
>       https://lore.kernel.org/driverdev-devel/alpine.DEB.2.21.19100413173=
81.2992@hadrien/
>     So, fix it (by replacing the mutex with a semaphore) or drop it.
> =

> I think that this issue has already been fixed in hif_shutdown() function=
, hasn't it ?

Indeed, when I wrote the TODO file, the function hif_shutdown() didn't
exist yet.

> I have another question. How can (replacing the mutex with a semaphore) s=
olve the problem?

My understanding is that a mutex aims to be acquired and released from the
same context. In some specific usages (RT-mutex? lock proving?), acquire
mutex from a context and release it from another can produce some errors.
In contrary a boolean semaphore does not have this restriction. =


(can anyone confirm that?)



-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
