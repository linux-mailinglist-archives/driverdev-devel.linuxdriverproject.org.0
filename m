Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A4E3161AF
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 10:00:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D03B6F57E
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 08:59:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5tX7SZInP4ZB for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 08:59:56 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 4980F6F62D; Wed, 10 Feb 2021 08:59:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B1D96F65D;
	Wed, 10 Feb 2021 08:59:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D16871BF330
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 08:58:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CD079870A0
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 08:58:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6YnGtCuOZTEd for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 08:58:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 330C587257
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 08:58:46 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id z22so1945717edb.9
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 00:58:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+g9Y8cyC/XpZejdxK4prgqdb7eO7ulFp3q9d8kXhFus=;
 b=F0v7wOt1rd+2rsRlt4gJpxKwr3FBjj+CtS7PEwoT+LArf84fzs0EPeLp3zpOUKwNiv
 IfsvmwIoiWVSYyerg0yh4aWdgkLml5j7VyvHovY541AVPmmKTatxj0aRpODH8xnStMMR
 3U3GZU3WrBw2S7iZTE8Ag+otj2DwUafE6BtFHDwl2Px3ZlEBo6oAYD4tyWYac4gNg8bk
 t/jBGmzAhRtg+SYJCsY3VDud+l/gr6IIuZli8kufYxvhbC200LeP4la1D9gczWZ0Ql5J
 75l87aSvvMeh/lB5Ut7vU/Z6SRt2pvWy5ezF8STorsAhvSMSO1XeKYlb6yIfIr+7rUgj
 nJ9Q==
X-Gm-Message-State: AOAM530EGRgpJa0Qs9J0Z6B4lVP7vqR9Xux3hi9vmJ2QiCrq6Gy3p4WP
 G/lzZhj4jA4UaPIuCyNWukTUZ+p6sE9yiQ==
X-Google-Smtp-Source: ABdhPJyETyGiT5/YGOl4YN9LULbICXN3O2PCC5IWVYSILdYdq45qejq6UHT72lzoKV4XDbNP8m3LQA==
X-Received: by 2002:a05:6402:206f:: with SMTP id
 bd15mr2230393edb.342.1612947524225; 
 Wed, 10 Feb 2021 00:58:44 -0800 (PST)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com.
 [209.85.208.42])
 by smtp.gmail.com with ESMTPSA id z16sm672022ejx.73.2021.02.10.00.58.43
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Feb 2021 00:58:43 -0800 (PST)
Received: by mail-ed1-f42.google.com with SMTP id q2so1979925edi.4
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 00:58:43 -0800 (PST)
X-Received: by 2002:a50:9d4d:: with SMTP id j13mr2146450edk.83.1612947522632; 
 Wed, 10 Feb 2021 00:58:42 -0800 (PST)
MIME-Version: 1.0
References: <YCL6vrGPQ0uDZUI8@karthik-strix-linux.karthek.com>
 <20210210080636.GT2696@kadam>
In-Reply-To: <20210210080636.GT2696@kadam>
From: karthek <mail@karthek.com>
Date: Wed, 10 Feb 2021 14:28:31 +0530
X-Gmail-Original-Message-ID: <CAJ5zXr1hJ6ts7Gqi_vfaJceZ8qKPgFk479h4sA9AxFrAdB8vHw@mail.gmail.com>
Message-ID: <CAJ5zXr1hJ6ts7Gqi_vfaJceZ8qKPgFk479h4sA9AxFrAdB8vHw@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: fix function comments to follow
 kernel-doc
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 1:37 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Wed, Feb 10, 2021 at 02:42:30AM +0530, karthik alapati wrote:
> > fix checkpatch.pl warning for "block comments should align the
> >  * on each line" and make function comments follow kernel-doc
> >
> > Signed-off-by: karthik alapati <mail@karthek.com>
> > ---
> >  .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   | 209 ++++++++----------
> >  1 file changed, 91 insertions(+), 118 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> > index cf23414d7..b7fca881c 100644
> > --- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> > +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> > @@ -20,16 +20,11 @@
> >  #define MAX_DOZE_WAITING_TIMES_9x 64
> >
> >  /**
> > -* Function:  phy_CalculateBitShift
> > -*
> > -* OverView:  Get shifted position of the BitMask
> > -*
> > -* Input:
> > -*            u32     BitMask,
> > -*
> > -* Output:    none
> > -* Return:            u32     Return the shift bit bit position of the mask
> > -*/
> > + *   phy_CalculateBitShift - Get shifted position of the BitMask.
> > + *   @BitMask: Bitmask.
> > + *
> > + *   Return: Return the shift bit position of the mask
> > + */
> >  static       u32 phy_CalculateBitShift(u32 BitMask)
> >  {
> >       u32 i;
> > @@ -43,19 +38,17 @@ static    u32 phy_CalculateBitShift(u32 BitMask)
> >
> >
> >  /**
> > -* Function:  PHY_QueryBBReg
> > -*
> > -* OverView:  Read "specific bits" from BB register
> > -*
> > -* Input:
> > -*            struct adapter *        Adapter,
> > -*            u32             RegAddr,        The target address to be readback
> > -*            u32             BitMask         The target bit position in the target address
> > -*                                                    to be readback
> > -* Output:    None
> > -* Return:            u32             Data            The readback register value
> > -* Note:              This function is equal to "GetRegSetting" in PHY programming guide
> > -*/
> > + *   PHY_QueryBBReg - Read "specific bits" from BB register.
> > + *   @Adapter:
> > + *   @RegAddr:       The target address to be readback
> > + *   @BitMask:       The target bit position in the target address
> > + *                           to be readback
> > + *
> > + * Return:   The readback register value
> > + *
> > + * .. Note:: This function is equal to "GetRegSetting" in PHY programming
> > + *                   guide
> > + */
> >  u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
> >  {
> >       u32 OriginalValue, BitShift;
> > @@ -64,7 +57,10 @@ u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
> >       return 0;
> >  #endif
> >
> > -     /* RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_QueryBBReg(): RegAddr(%#lx), BitMask(%#lx)\n", RegAddr, BitMask)); */
> > +     /**
> > +      * RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_QueryBBReg():
> > +      * RegAddr(%#lx), BitMask(%#lx)\n", RegAddr, BitMask));
> > +      */
>
> Just delete this (in a separate patch).
>
> >
> >       OriginalValue = rtw_read32(Adapter, RegAddr);
> >       BitShift = phy_CalculateBitShift(BitMask);
> > @@ -75,22 +71,17 @@ u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
> >
> >
> >  /**
> > -* Function:  PHY_SetBBReg
> > -*
> > -* OverView:  Write "Specific bits" to BB register (page 8~)
> > -*
> > -* Input:
> > -*            struct adapter *        Adapter,
> > -*            u32             RegAddr,        The target address to be modified
> > -*            u32             BitMask         The target bit position in the target address
> > -*                                                            to be modified
> > -*            u32             Data            The new register value in the target bit position
> > -*                                                            of the target address
> > -*
> > -* Output:    None
> > -* Return:            None
> > -* Note:              This function is equal to "PutRegSetting" in PHY programming guide
> > -*/
> > + *   PHY_SetBBReg - Write "Specific bits" to BB register (page 8~).
> > + *   @Adapter:
> > + *   @RegAddr:       The target address to be modified
> > + *   @BitMask:       The target bit position in the target address
> > + *                           to be modified
> > + *   @Data:          The new register value in the target bit position
> > + *                           of the target address
> > + *
> > + * .. Note:: This function is equal to "PutRegSetting" in PHY programming
> > + *                   guide
> > + */
> >
> >  void PHY_SetBBReg_8723B(
> >       struct adapter *Adapter,
> > @@ -106,7 +97,10 @@ void PHY_SetBBReg_8723B(
> >       return;
> >  #endif
> >
> > -     /* RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_SetBBReg(): RegAddr(%#lx), BitMask(%#lx), Data(%#lx)\n", RegAddr, BitMask, Data)); */
> > +     /**
> > +      * RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_SetBBReg():
> > +      * RegAddr(%#lx), BitMask(%#lx), Data(%#lx)\n", RegAddr, BitMask, Data));
> > +      */
>
> Delete.
>
> >
> >       if (BitMask != bMaskDWord) { /* if not "double word" write */
> >               OriginalValue = rtw_read32(Adapter, RegAddr);
> > @@ -184,27 +178,21 @@ static u32 phy_RFSerialRead_8723B(
> >  }
> >
> >  /**
> > -* Function:  phy_RFSerialWrite_8723B
> > -*
> > -* OverView:  Write data to RF register (page 8~)
> > -*
> > -* Input:
> > -*            struct adapter *        Adapter,
> > -*            RF_PATH                 eRFPath,        Radio path of A/B/C/D
> > -*            u32             Offset,         The target address to be read
> > -*            u32             Data            The new register Data in the target bit position
> > -*                                                            of the target to be read
> > -*
> > -* Output:    None
> > -* Return:            None
> > -* Note:              Threre are three types of serial operations:
> > -*            1. Software serial write
> > -*            2. Hardware LSSI-Low Speed Serial Interface
> > -*            3. Hardware HSSI-High speed
> > -*            serial write. Driver need to implement (1) and (2).
> > -*            This function is equal to the combination of RF_ReadReg() and  RFLSSIRead()
> > + *   phy_RFSerialWrite_8723B - Write data to RF register (page 8~).
> > + *   @Adapter:
> > + *   @eRFPath:       Radio path of A/B/C/D
> > + *   @Offset:        The target address to be read
> > + *   @Data:  The new register Data in the target bit position
> > + *                   of the target to be read
> > + *
> > + * .. Note::         Threre are three types of serial operations:
> > + *           1. Software serial write
> > + *           2. Hardware LSSI-Low Speed Serial Interface
> > + *           3. Hardware HSSI-High speed
> > + *           serial write. Driver need to implement (1) and (2).
> > + *           This function is equal to the combination of RF_ReadReg() and  RFLSSIRead()
> >   *
> > - * Note:               For RF8256 only
> > + * .. Note::           For RF8256 only
> >   *            The total count of RTL8256(Zebra4) register is around 36 bit it only employs
> >   *            4-bit RF address. RTL8256 uses "register mode control bit" (Reg00[12], Reg00[10])
> >   *            to access register address bigger than 0xf. See "Appendix-4 in PHY Configuration
> > @@ -225,7 +213,7 @@ static u32 phy_RFSerialRead_8723B(
> >   *
> >   *
> >   *
> > -*/
> > + */
> >  static void phy_RFSerialWrite_8723B(
> >       struct adapter *Adapter,
> >       enum RF_PATH eRFPath,
> > @@ -249,33 +237,33 @@ static void phy_RFSerialWrite_8723B(
> >       /*  Put write addr in [5:0]  and write data in [31:16] */
> >       /*  */
> >       /* DataAndAddr = (Data<<16) | (NewOffset&0x3f); */
> > -     DataAndAddr = ((NewOffset<<20) | (Data&0x000fffff)) & 0x0fffffff;       /*  T65 RF */
> > +     DataAndAddr = ((NewOffset<<20) | (Data&0x000fffff)) & 0x0fffffff;
> > +     /*T65 RF */
>
> This doesn't make sense at all now.
>
> >
> >       /*  */
> >       /*  Write Operation */
> >       /*  */
> >       PHY_SetBBReg(Adapter, pPhyReg->rf3wireOffset, bMaskDWord, DataAndAddr);
> > -     /* RTPRINT(FPHY, PHY_RFW, ("RFW-%d Addr[0x%lx]= 0x%lx\n", eRFPath, pPhyReg->rf3wireOffset, DataAndAddr)); */
> > +     /**
> > +       *RTPRINT(FPHY, PHY_RFW, ("RFW-%d Addr[0x%lx]= 0x%lx\n", eRFPath,
> > +       *pPhyReg->rf3wireOffset, DataAndAddr));
> > +       */
>
> Delete.
>
> >
> >  }
> >
> >
> >  /**
> > -* Function:  PHY_QueryRFReg
> > -*
> > -* OverView:  Query "Specific bits" to RF register (page 8~)
> > -*
> > -* Input:
> > -*            struct adapter *        Adapter,
> > -*            RF_PATH                 eRFPath,        Radio path of A/B/C/D
> > -*            u32             RegAddr,        The target address to be read
> > -*            u32             BitMask         The target bit position in the target address
> > -*                                                            to be read
> > -*
> > -* Output:    None
> > -* Return:            u32             Readback value
> > -* Note:              This function is equal to "GetRFRegSetting" in PHY programming guide
> > -*/
> > + *   PHY_QueryRFReg - Query "Specific bits" to RF register (page 8~).
> > + *   @Adapter:
> > + *   @eRFPath:       Radio path of A/B/C/D
> > + *   @RegAdd:        The target address to be read
> > + *   @BitMask:       The target bit position in the target address
> > + *                           to be read
> > + *
> > + *   Return: Readback value
> > + *
> > + * .. Note::         This function is equal to "GetRFRegSetting" in PHY programming guide
> > + */
> >  u32 PHY_QueryRFReg_8723B(
> >       struct adapter *Adapter,
> >       u8 eRFPath,
> > @@ -296,23 +284,17 @@ u32 PHY_QueryRFReg_8723B(
> >  }
> >
> >  /**
> > -* Function:  PHY_SetRFReg
> > -*
> > -* OverView:  Write "Specific bits" to RF register (page 8~)
> > -*
> > -* Input:
> > -*            struct adapter *        Adapter,
> > -*            RF_PATH                 eRFPath,        Radio path of A/B/C/D
> > -*            u32             RegAddr,        The target address to be modified
> > -*            u32             BitMask         The target bit position in the target address
> > -*                                                            to be modified
> > -*            u32             Data            The new register Data in the target bit position
> > -*                                                            of the target address
> > -*
> > -* Output:    None
> > -* Return:            None
> > -* Note:              This function is equal to "PutRFRegSetting" in PHY programming guide
> > -*/
> > + *   PHY_SetRFReg - Write "Specific bits" to RF register (page 8~).
> > + *   @Adapter:
> > + *   @eRFPath:       Radio path of A/B/C/D
> > + *   @RegAddr:       The target address to be modified
> > + *   @BitMask:       The target bit position in the target address
> > + *                           to be modified
> > + *   @Data:  The new register Data in the target bit position
> > + *                                                           of the target address
> > + *
> > + *   .. Note::               This function is equal to "PutRFRegSetting" in PHY programming guide
>
>
> Don't put a huge white space after the ::.
>
> regards,
> dan carpenter
>
> > + */
> >  void PHY_SetRFReg_8723B(
> >       struct adapter *Adapter,
> >       u8 eRFPath,
> > @@ -344,15 +326,7 @@ void PHY_SetRFReg_8723B(
> >
> >
> >  /*-----------------------------------------------------------------------------
> > - * Function:    PHY_MACConfig8192C
> > - *
> > - * Overview: Condig MAC by header file or parameter file.
> > - *
> > - * Input:       NONE
> > - *
> > - * Output:      NONE
> > - *
> > - * Return:      NONE
> > + *   PHY_MACConfig8192C - Condig MAC by header file or parameter file.
> >   *
> >   * Revised History:
> >   *  When             Who             Remark
> > @@ -369,17 +343,12 @@ s32 PHY_MACConfig8723B(struct adapter *Adapter)
> >  }
> >
> >  /**
> > -* Function:  phy_InitBBRFRegisterDefinition
> > -*
> > -* OverView:  Initialize Register definition offset for Radio Path A/B/C/D
> > -*
> > -* Input:
> > -*            struct adapter *        Adapter,
> > -*
> > -* Output:    None
> > -* Return:            None
> > -* Note:              The initialization value is constant and it should never be changes
> > -*/
> > + *   phy_InitBBRFRegisterDefinition - Initialize Register definition offset for
> > + *                                                                   Radio Path A/B/C/D
> > + *   @Adapter:
> > + *
> > + *   .. Note::               The initialization value is constant and it should never be changes
> > + */
> >  static void phy_InitBBRFRegisterDefinition(struct adapter *Adapter)
> >  {
> >       struct hal_com_data             *pHalData = GET_HAL_DATA(Adapter);
> > @@ -675,6 +644,7 @@ static void phy_SetRegBW_8723B(
> >  )
> >  {
> >       u16 RegRfMod_BW, u2tmp = 0;
> > +
>
>
> This is not related to comments.  Do it in a separate patch.
>
> >       RegRfMod_BW = rtw_read16(Adapter, REG_TRXPTCL_CTL_8723B);
> >
> >       switch (CurrentBW) {
> > @@ -789,7 +759,7 @@ static void phy_PostSetBwMode8723B(struct adapter *Adapter)
> >
> >               PHY_SetBBReg(Adapter, rFPGA1_RFMOD, bRFMOD, 0x0);
> >
> > -/*                   PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2, BIT10, 1); */
> > +     /*PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2, BIT10, 1); */
>
> This format is wrong.  Anyway, just delete the commented out code.
>
> regards,
> dan carpenter
>

how can i delete that, i have no idea what this driver does
i'm just fixing coding style issues for eudyptula challenge.
i dont think its a good idea to delete the code without knowing its
purpose even though its commented out
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
