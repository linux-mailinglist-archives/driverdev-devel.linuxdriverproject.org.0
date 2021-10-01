Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A69541F0A4
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 17:10:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1DEBE407D8;
	Fri,  1 Oct 2021 15:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yf9jMVwNhXIa; Fri,  1 Oct 2021 15:10:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CFAEE40414;
	Fri,  1 Oct 2021 15:10:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AD7631BF41E
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 15:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A925840511
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 15:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ry7lSQcGsphC for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 15:09:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2059.outbound.protection.outlook.com [40.107.244.59])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E2B1E4050D
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 15:09:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YLNQUmmxsboPZxhwoVQaLin/+ciiXXXZiPQEVopNv8gArAttfrWykV14XWuDhCqcH0C9WnMMbbFLSex+8/ejoVQ4GrdoxtXDfyPh8HNjj00t8JGYH5NY9Obr3lX8STS/tjhC5xxH6XRS7RFdoV3+yxXAEcnRj5qBBqkzhp4foJbv1lzhnIWTPNzCytgLys1rOkjRZjJKZBmebeM14adcvRpM8aSXyNcD759M5iBOPkdjKT6EVaRUVsz2HqZQT1zDdmWwBMtPWUFU7/68F6VQmpcxh60PKhcG7e1oeV5gCbbMn7COQ57VV1rC1cvatl+yBOKtqY+UvvlZxXpRd+sygw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+nEDjNXoHg5YIhm47Q91ga7nM7AuZCBnSk8DJWCiadg=;
 b=dpmT8yH+HgyMQFCPkxeci7xwZDwdS+tMd44xCxyUpP2GxJXSOtI01hER4bg60nwN2DFzcg48A+1ChFSyYPqu22O29AQFTOCvoFX3VULa673AkA0ztRaUCDiwHSSVaHsJQsPrji/594u8vNCN+/bloKn/6B4X4MikR+kMI/hUD2N6BfxyPsUR+8Wa8bgN0vIYx6WqTr64KfvJ1USb9pUqQXSij5oxTxjCix2Tx2s0SHlssW4xv96uzdIOu28K0XBSoVpbbykI2lSzzoWerQ+x7r0Ipzb2/BWa4YyOpOcYOPZopWtajqAVuS5tV4eKXpx8wKpqYTBlaM5kjRcS9A5UoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+nEDjNXoHg5YIhm47Q91ga7nM7AuZCBnSk8DJWCiadg=;
 b=cjLxDj71p2YkmWKc0WkFGq+y9e6vHUFdw1UuwhThpXZF3iKzS/yrsw1j0nW+vNDaJXZ2Zmml526blrCJ/h6z+Mq8pYu2u16GXQkSpf23YXgZAILbQ7S9fjnA3lP255AgJFaNJTigOxGcwSgskjVwj6ldTl5kKmvQFMPFU2CSVts=
Authentication-Results: codeaurora.org; dkim=none (message not signed)
 header.d=none;codeaurora.org; dmarc=none action=none header.from=silabs.com;
Received: from PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 by PH0PR11MB5595.namprd11.prod.outlook.com (2603:10b6:510:e5::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.15; Fri, 1 Oct
 2021 15:09:50 +0000
Received: from PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::31cb:3b13:b0e8:d8f4]) by PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::31cb:3b13:b0e8:d8f4%9]) with mapi id 15.20.4544.025; Fri, 1 Oct 2021
 15:09:50 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v7 10/24] wfx: add fwio.c/fwio.h
Date: Fri, 01 Oct 2021 17:09:41 +0200
Message-ID: <2174509.SLDT7moDbM@pc-42>
Organization: Silicon Labs
In-Reply-To: <87sfxlj6s1.fsf@codeaurora.org>
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-11-Jerome.Pouiller@silabs.com>
 <87sfxlj6s1.fsf@codeaurora.org>
X-ClientProxiedBy: PR3PR09CA0020.eurprd09.prod.outlook.com
 (2603:10a6:102:b7::25) To PH0PR11MB5657.namprd11.prod.outlook.com
 (2603:10b6:510:ee::19)
MIME-Version: 1.0
Received: from pc-42.localnet (37.71.187.125) by
 PR3PR09CA0020.eurprd09.prod.outlook.com (2603:10a6:102:b7::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.16 via Frontend Transport; Fri, 1 Oct 2021 15:09:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4990fd0d-b871-4eba-1955-08d984ed839f
X-MS-TrafficTypeDiagnostic: PH0PR11MB5595:
X-Microsoft-Antispam-PRVS: <PH0PR11MB5595D8CA493C0B148A22546F93AB9@PH0PR11MB5595.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kCxLoayU9MCLXTIKVr1JHZhXr2099dsEwPWF0TL0Lr0RABBFZbXwhmzjyuEm3TWcdTsAQpGBZO7Y4yBWYr5u0yu5XMAcaiLY7wZj+LotN4GQa7m9Rkp3L8y8KcshOGnDy3xo28gubNT4TNYOeiWQXD0my+J/eQYPt0PniSX6djxlBrGPINdVL2cEDUMUhoNh/OgqFbYErd6sBJapwtIpsTYJSYaRLrgLJ1GXzqsDdUbGrCwspH+UihXzkz052rx+qYhvExlwh7qvVittiH6y8E5Op6oP90ph/S0lTCd0anStuh/8w7OsZHitXe7QkzGX+Qzo9fVQJzHGg0Y75Fz4osqrC5h15YxdFAEMvHNKKUmHhbZF7ZQ4eg73CHwKSWDzfHLndn/Q9EVjzZ98rQfhRQcz2D3OA3FOB3fSeAHKDSDFwS6RamsLvLR3uJK3zadC42SVk+ZuI56mNDo2mzOz1L6/S3V7Ktb9cGXs4KBfiU1raYZYZtYK0i2/cieQZi1rrstfxLYnX2sjm9qmsatDj5HO7vRpLn5whREAY7N2Gt2iUem3zIS9LkGbuSuLEdTrIkj+k5TqQGSOwI4Vw5VdEw26vhdRmC0v2JIuLaDUPeUR4qdfYiNwKBLWDZ5Xd4r23bV9bKffyjPnW7ti5yG4vlKjdEyjCZMyExmgfILhZeOyUJmRSj1k4Qbhq99yz9IcKVFRhBwgDhK4GAw2vCEUD6dIYRYZiNbspweH8jb6ELBxQZzmOJT3KTr6F1lo84lpl5lsgXePdbLOhi5sE4/vQ/S58fujf5kekkaYsD++THR+b8+265C7I9r1zQZFC2a+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(66946007)(4326008)(186003)(956004)(6916009)(6506007)(8676002)(66574015)(7416002)(26005)(6512007)(33716001)(66476007)(86362001)(83380400001)(66556008)(38350700002)(38100700002)(9686003)(316002)(6486002)(2906002)(6666004)(5660300002)(8936002)(52116002)(54906003)(966005)(36916002)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?zwx+drt9JIn0jaLYFPb3lIL+GiwDaVoX34vDFFdHutVEf0sZC/Lja/HYTH?=
 =?iso-8859-1?Q?ScX5mM9kYnunZ2lE8DvhV28xqibl9etEkUpXCmeR6OBykWhwACTOuMWLhO?=
 =?iso-8859-1?Q?2Sh5QmR/0tFYONDn2Fgjs0QRwKvH1Qjd1qGOLii76Rp9GCj8OAzn4Wo3an?=
 =?iso-8859-1?Q?oMeJU9tK82z11VW2lvP5bfYGa0LMf96j6FdUQ+CFN9IUBUf7pmxTZSlX9S?=
 =?iso-8859-1?Q?Fak6lHVWs69aNe5imsTBNQrETOqbVXPP7QQFoAtXerZhcrodFAUytePXz8?=
 =?iso-8859-1?Q?KpHXBMpIQtcMxisR9y3TJbo/FkRnwcMya3neFwb3i3v3QyElU03PfEfGSx?=
 =?iso-8859-1?Q?UZpUths9sbKwNDtMCezfSD92s1g1i6wnMiJFzcXgpSTWTfaVvnQ34A1G8U?=
 =?iso-8859-1?Q?VjHUIU1g6HsB/s2hZlvhyWPPuf74I2XeBKq4uZqfm92lHODonJfClKQD1C?=
 =?iso-8859-1?Q?baCun7NExczPDnmZFsvfPkaKi0eFSJYoPjaRW20P061oViP3J+D+7jAHyr?=
 =?iso-8859-1?Q?CwolmiXnzpiM/2xMkRZCGGPtV2qdbAJhROuYqM2C9GVObb37iH0gKMvVTF?=
 =?iso-8859-1?Q?nJPkQURpqlvBAM+QiNkAJvnznUSZS4qPMPQKKwYdCLHjuciAXU5pEk+i8X?=
 =?iso-8859-1?Q?ZXhd4AqUVS/JCtbvAm8j1eprFGK/t8jXL4ibi0u4BCXP4anmbqB98A+zkE?=
 =?iso-8859-1?Q?b83s39rMmvd6oxsHlZUoBIj+I33jAtvAqPsoarNQbjN2q4vIw7zxiuWThw?=
 =?iso-8859-1?Q?CCS+nO2SZMbVhY2GqImygWU/SMZaTW/ScEmIbgHtPinJ1Xr+NOy7VNq/bX?=
 =?iso-8859-1?Q?zDYqSG6bMLNNdv19TYACb4sS0KKme2jVuY2y7f5LgORfwUtwTUOmxiKfII?=
 =?iso-8859-1?Q?i61khCTpfX+3aQULF1JuNFh5fO/7jXBvztvoZS5YCuHYnX7r0G0Q2FprQ/?=
 =?iso-8859-1?Q?w4//jTdxcjTDTbX6XVjzckl0CR1B4Qswi5B8q0jqsRslosq/gHy4B1W/5/?=
 =?iso-8859-1?Q?zLihk4s+a3syX+GFk1oK6P1Ncx/uA/mXibcU9BvA2yojJYlmXaIv3HgEKY?=
 =?iso-8859-1?Q?92qqbt6d7nwkdVY6qYe9l356ouiMFARUG+tJhDWHHhS+a22XVj8hLquX2w?=
 =?iso-8859-1?Q?AZZM5cZZnridgbi28LgFojRz8Dm83EvWIO5OWUEzNyL8zmozeRcn3CR7Zg?=
 =?iso-8859-1?Q?EcHDlaUL0GB4NifTvzqf4Q+dWAq7DTz/3UVkJTUmalBIs+nNiLlUrsoSjw?=
 =?iso-8859-1?Q?s0TesPZX06MF9bm2lELERs0ACNC4OHKdeZM8BqikfTos3/MBwhygnXSUFX?=
 =?iso-8859-1?Q?8orWYMBmlgC7QvUtrcUi6UnW5ZdOWyKYTC/pE1IaOwKsntE/eOhdep/Jm5?=
 =?iso-8859-1?Q?Ix0p3QFtER?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4990fd0d-b871-4eba-1955-08d984ed839f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2021 15:09:50.2487 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CBApmKg9rqsGoO34XUsASlMPz/vBojP5bMlUaKJjhUtfLr147vtmkYxuLQT9Ffq3BZWpgT+PIs8AyXQVwiYWsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5595
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?ISO-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Friday 1 October 2021 13:58:38 CEST Kalle Valo wrote:
> Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
> =

> > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> >
> > Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> [...]
> =

> > +static int get_firmware(struct wfx_dev *wdev, u32 keyset_chip,
> > +                     const struct firmware **fw, int *file_offset)
> > +{
> > +     int keyset_file;
> > +     char filename[256];
> > +     const char *data;
> > +     int ret;
> > +
> > +     snprintf(filename, sizeof(filename), "%s_%02X.sec",
> > +              wdev->pdata.file_fw, keyset_chip);
> > +     ret =3D firmware_request_nowarn(fw, filename, wdev->dev);
> > +     if (ret) {
> > +             dev_info(wdev->dev, "can't load %s, falling back to %s.se=
c\n",
> > +                      filename, wdev->pdata.file_fw);
> > +             snprintf(filename, sizeof(filename), "%s.sec",
> > +                      wdev->pdata.file_fw);
> > +             ret =3D request_firmware(fw, filename, wdev->dev);
> > +             if (ret) {
> > +                     dev_err(wdev->dev, "can't load %s\n", filename);
> > +                     *fw =3D NULL;
> > +                     return ret;
> > +             }
> > +     }
> =

> How is this firmware file loading supposed to work? If I'm reading the
> code right, the driver tries to load file "wfm_wf200_??.sec" but in
> linux-firmware the file is silabs/wfm_wf200_C0.sec:
> =

> https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.g=
it/tree/silabs
> =

> That can't work automatically, unless I'm missing something of course.

The firmware are signed. "C0" is the key used to sign this firmware. This
key must match with the key burned into the chip. Fortunately, the driver
is able to read the key accepted by the chip and automatically choose the
right firmware.

We could imagine to add a attribute in the DT to choose the firmware to
load. However, it would be a pity to have to specify it manually whereas
the driver is able to detect it automatically.

Currently, the only possible key is C0. However, it exists some internal
parts with other keys. In addition, it is theoretically possible to ask
to Silabs to burn parts with a specific key in order to improve security
of a product. =


Obviously, for now, this feature mainly exists for the Silabs firmware
developers who have to work with other keys.
 =

> Also I would prefer to use directory name as the driver name wfx, but I
> guess silabs is also doable.

I have no opinion.


> Also I'm not seeing the PDS files in linux-firmware. The idea is that
> when user installs an upstream kernel and the linux-firmware everything
> will work automatically, without any manual file installations.

WF200 is just a chip. Someone has to design an antenna before to be able
to use.

However, we have evaluation boards that have antennas and corresponding
PDS files[1]. Maybe linux-firmware should include the PDS for these boards
and the DT should contains the name of the design. eg:

    compatible =3D "silabs,brd4001a", "silabs,wf200";

So the driver will know which PDS it should use. =


In fact, I am sure I had this idea in mind when I have started to write
the wfx driver. But with the time I have forgotten it. =


If you agree with that idea, I can work on it next week.


[1]: https://github.com/SiliconLabs/wfx-pds

-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
