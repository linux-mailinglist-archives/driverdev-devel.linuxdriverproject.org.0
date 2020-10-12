Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A226128B144
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Oct 2020 11:16:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 528BB87445;
	Mon, 12 Oct 2020 09:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QIIU4TAkczc6; Mon, 12 Oct 2020 09:16:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 31300872A0;
	Mon, 12 Oct 2020 09:16:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A1591BF420
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 09:16:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6393A869A4
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 09:16:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tFJ52nUhc0tp for <devel@linuxdriverproject.org>;
 Mon, 12 Oct 2020 09:16:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2050.outbound.protection.outlook.com [40.107.236.50])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5DB6986977
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 09:16:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bnKt2TUSOV4tZHzfiWMmyN1QLayNv9zZJkmY5p6A8VC4bcb8rWt2Jca5308ycIz0JxyW+UizkpNu925mTVTCsX7JhlUQ8a26maqhWWX6X0sfY44fYxStImk9JbjP7YAFBS8l65HCh4OI+6yNNVYB2DgTeQH+DS/2HzCL/1gQRIYfPo+G0R3zeeLg3SHXUhmTaCGKkV7UkDeutfr1a0NZLSnjcBcAeuOFZGc4d11DWX6XFTSNUt6uQwl0BCt/dSPg5Ojtz23TM2gLlNtl242KlbhDYkhCv/Tx3CiqyrVHcy2fzf35MKmQOwPqSFCx90XEMx60/P7BE6FQRdbB9qhSzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1WkrJaYjnJPiFiOaOmLyZxZ34oSnd71POze+FIj4aRw=;
 b=DbjIXIXqslDrJQ+52GHA8x/S03XQKc8SZIIycjr8tXUl1kuiSV4umvCP6+3XmQnGzr04WXrmDJDhwpEjpWjMi+0qitcknDzN6M3y7sc2FaJ+Z/1NnEfyqMlTbUqoWUyjulSLsFc+thFlC/QeYNU+murDLS1QUbaCGyoFO0UKClVI9gzmW9ExBErNUo0BGIZZK+OD+1QRB1JOJYELjrBRHXF3AmqkVj2+/lr4cX8rdjHayKt66oCtYSUKAdtmwzSPtHFi7ncnum791Gu3yzo90X+4/V7CEW6PYampVSnuvqiK0XbjsFDIVStpQwhkRp1y1WNaQ/ACEME6xoGOwS3moA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1WkrJaYjnJPiFiOaOmLyZxZ34oSnd71POze+FIj4aRw=;
 b=UhnnypWYLq+ydfADL3X4DJ4/n3mz4naKugD5uD7lZ2+PftaomxMFmR7DswlRUQ+huue7c+5TqY8WKdfh4WTwVDam1Fgkb4V2MkH2sVgFufvUyMZ6fzhs0Y3nRt16iwQT0Ncc997fV5CwnpFTsWXPzUWnKawXKdffJAQ/9nVeWDw=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB3358.namprd11.prod.outlook.com (2603:10b6:805:c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Mon, 12 Oct
 2020 09:16:41 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 09:16:40 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: Re: [PATCH] staging: wfx: Spacing and alignment cleanup
Date: Mon, 12 Oct 2020 11:16:28 +0200
Message-ID: <17610782.Z3s6dbGlRe@pc-42>
Organization: Silicon Labs
In-Reply-To: <20201012082630.275118-1-izabela.bakollari@gmail.com>
References: <20201012082630.275118-1-izabela.bakollari@gmail.com>
X-Originating-IP: [82.67.86.106]
X-ClientProxiedBy: PR3P191CA0022.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:102:54::27) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (82.67.86.106) by
 PR3P191CA0022.EURP191.PROD.OUTLOOK.COM (2603:10a6:102:54::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.23 via Frontend Transport; Mon, 12 Oct 2020 09:16:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f96ca758-6cb2-4ef6-a5e4-08d86e8f8758
X-MS-TrafficTypeDiagnostic: SN6PR11MB3358:
X-Microsoft-Antispam-PRVS: <SN6PR11MB33584A312F786DFD68FBF7BD93070@SN6PR11MB3358.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W/MARx2rGerJ6TECqLBq1TIpbHdx+FMEgejzktpebi2UxEO5Nd2fRZ3KgNHIthrrZjR3gyFhrvz10MMAzg4Mcczm2n99+go0SLMo/iWJbk5BrmichO/5agJQWEmrTcwRdwhmjEejGOluRD8jn9XwjEf3barJl2u93/zw+4Hce2VLDyDochPjoWH1Zy/2SrcE8lmWu/28xyex0KvtEa1nf5jITbcbESBmndQNJsuEyawu1VE2O9C16ZB3fZOL7H8T2Q6BUsBGPfYGgYyNVO6chJuTZaSQUFqY6G4WATufPIwaLfh4Q7R97c/I/dUFwfxSDz9TEpe7hJGaZo97KSmuIuA3Xavyx0wgvn89BXZiDS4ognUhVIvnK8p2P2aCCDpa
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(376002)(346002)(396003)(39850400004)(66574015)(6506007)(8936002)(956004)(83380400001)(66946007)(5660300002)(86362001)(6512007)(66476007)(6666004)(52116002)(66556008)(9686003)(36916002)(4326008)(2906002)(478600001)(33716001)(6486002)(16526019)(316002)(26005)(186003)(8676002)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: D6yyMBBTAmyLJ6AKRljF6UaBFcHmkuhgdBFq3VntOlYxnvupgTMNIjAf21QyGBtUxPBf+d1sY/L4Wu0KjEq+EqHUaMFVEbi2N/IlbrPealeimWx54D9UKrnBx0g+ucePUoszIB9J2K1leo5Zl41UCEoLMp1wQ09sk/BrirJOY1V92Qc/Nt385Y9VOgyN5PKzhuypn+tDhD7FXUTJRjC8RQqqj7tIjryH/YfGg6l+2rqFhlfhrl3eJfkKjSUpEWY5okCZgIQ6hO39XV0OU0O42nUopbtjcSLs7qVQnJtonvjbkcf+ifTOsP93e9vHVctsYlDDy6ufJt/Je8V6g0yhy8umt+FBQYD9nXHg9Lu7nIdxj+d8Kh/tpMm6tRI7KPkOnbsADkXTFK16XQSdk/YrUAXfQexrfpDKQxV2bwFP3ZDrVDf8n1Gjqfz+ETgiFQoc47GLYkTsqCCrMcuf4Qf0cxLSZZ635pkNk7YaqepcrQCDAiFo7qvRN4gnGtPKou/EURw1FjTeHYx4dDI/rmM90tdurvhFIMpkkSStI/HooOyU2hFgwaMVyJy085OZJxzPLF49xalG7KfaOtfcGzrvJRKu9aOAiRy7NPp+d3EyHrZ7vqdOrcueftxRRZv8KVs9SotYcTc5TINhYUs5Rlnb3w==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f96ca758-6cb2-4ef6-a5e4-08d86e8f8758
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2020 09:16:40.6815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RdCOUnG081IBcE6xuGU14cw5K0JGhUkvFYpmv/6u+pCUGDmOugKrnZO7QnXgZqvcglB6ra/H65+Gf2pY6ZVVrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3358
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
Cc: Izabela Bakollari <izabela.bakollari@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Monday 12 October 2020 10:26:30 CEST izabela.bakollari@gmail.com wrote:
> From: Izabela Bakollari <izabela.bakollari@gmail.com>
> =

> This patch fixes minor issue with spacing and alignment.
> =

> checkpatch message:
> CHECK: Alignment should match open parenthesis
> =

> Signed-off-by: Izabela Bakollari <izabela.bakollari@gmail.com>
> ---
>  drivers/staging/wfx/debug.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/staging/wfx/debug.c b/drivers/staging/wfx/debug.c
> index 3f1712b7c919..83ccbab50899 100644
> --- a/drivers/staging/wfx/debug.c
> +++ b/drivers/staging/wfx/debug.c
> @@ -32,7 +32,7 @@ static const struct trace_print_flags wfx_reg_print_map=
[] =3D {
>  };
> =

>  static const char *get_symbol(unsigned long val,
> -               const struct trace_print_flags *symbol_array)
> +                             const struct trace_print_flags *symbol_arra=
y)
>  {
>         int i;
> =

> --
> 2.18.4
> =


Hello Izabela,

Thank you for your contribution.

This issue has already been fixed in commit d61c0848100c ("staging: wfx:
clear alignment style issues").

For your next contribution, ensure your patch applies on the last
development tree.

To get the development tree to use, you can run:

   ./scripts/get_maintainer.pl --scm -f drivers/staging/wfx/debug.c

-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
